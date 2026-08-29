#!/bin/bash
# CIS181 Installer for macOS
# Double-click this file from the root of your Local Course Repository.

set -u

REPOSITORY_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

show_message() {
  osascript -e "display dialog \"$1\" buttons {\"OK\"} default button \"OK\" with title \"CIS181 Installer\"" >/dev/null 2>&1 || true
}

choose_package() {
  if [[ -n "${CIS181_PACKAGE:-}" ]]; then
    printf '%s' "$CIS181_PACKAGE"
    return
  fi
  osascript <<'APPLESCRIPT'
set selectedFile to choose file with prompt "Choose the CIS181 starter package you downloaded from Brightspace:" of type {"zip"}
POSIX path of selectedFile
APPLESCRIPT
}

PACKAGE_PATH="$(choose_package 2>/dev/null)" || exit 0
PACKAGE_NAME="$(basename "$PACKAGE_PATH")"

case "$PACKAGE_NAME" in
  lab1-2-starter.zip) TARGET="lab1-2" ;;
  lab1-3-starter.zip) TARGET="lab1-3" ;;
  lab1-4-starter.zip) TARGET="lab1-4" ;;
  lab1-5-starter.zip) TARGET="lab1-5" ;;
  lab2-1-starter.zip) TARGET="lab2-1" ;;
  lab2-3-starter.zip) TARGET="lab2-3" ;;
  lab2-5-starter.zip) TARGET="lab2-5" ;;
  lab3-1-starter.zip) TARGET="lab3-1" ;;
  lab3-3-starter.zip) TARGET="lab3-3" ;;
  *)
    show_message "This is not a CIS181 starter package. Please choose a file named lab1-2-starter.zip."
    exit 1
    ;;
esac

if ! unzip -tqq "$PACKAGE_PATH"; then
  show_message "The selected ZIP file is damaged or cannot be opened. Download it again from Brightspace."
  exit 1
fi

while IFS= read -r ARCHIVE_PATH; do
  case "$ARCHIVE_PATH" in
    "$TARGET"/*) ;;
    css/*)
      [[ "$TARGET" == lab1-* ]] || { show_message "This package has an unexpected file structure."; exit 1; }
      ;;
    *)
      show_message "This package has an unexpected file structure."
      exit 1
      ;;
  esac
done < <(unzip -Z1 "$PACKAGE_PATH")

EXISTING_FILES="$(find "$REPOSITORY_ROOT/$TARGET" -type f ! -name '.gitkeep' ! -name 'README.md' -print 2>/dev/null || true)"
if [[ -n "$EXISTING_FILES" ]]; then
  RESPONSE="$(osascript -e 'display dialog "This will replace the starter files already in the selected lab folder. Continue?" buttons {"Cancel", "Install"} default button "Install" with title "CIS181 Installer"' -e 'button returned of result' 2>/dev/null || true)"
  [[ "$RESPONSE" == "Install" ]] || exit 0
fi

if ! unzip -oq "$PACKAGE_PATH" -d "$REPOSITORY_ROOT"; then
  show_message "The package could not be installed. Please try again or contact your instructor."
  exit 1
fi

find "$REPOSITORY_ROOT/$TARGET" -name '.gitkeep' -type f -delete 2>/dev/null || true
find "$REPOSITORY_ROOT/$TARGET" -name 'README.md' -type f -delete 2>/dev/null || true
show_message "${TARGET} starter files are ready. Open your Local Course Repository in Visual Studio Code to begin."
