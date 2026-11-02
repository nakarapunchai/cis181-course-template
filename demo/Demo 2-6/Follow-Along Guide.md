# Demo 2-6 — Lecture and Walkthrough

This current-semester demonstration continues the Thai Terrace website from the completed Demo 2-5. The video alternates short explanations with actual cumulative HTML/CSS edits and browser checks. Voice B is used throughout.

## Start here

1. Extract **Practice Files.zip**.
2. Keep **starter** unchanged. Make a complete copy named **Working Copy**.
3. Open that entire working folder in VS Code. Keep its `css/`, `pages/`, and `images/` folders together.
4. Open `index.html` in your usual browser preview. Use the same working page throughout the lesson.
5. Keep **solution** and **checkpoints** available for comparison. Each checkpoint is cumulative; do not mix files from different stages.

The starter preserves the completed 2-5 code. It does not supply a hidden menu feature. The new navigation markup is added visibly during the walkthrough. No JavaScript is present in the practice website.

## Follow the same sequence

| Stage | Files to edit | Expected result |
| --- | --- | --- |
| Start | None | Flexible 2-5 layout; one-column grids; ordinary navigation |
| 1 — Grid | `css/style.css` | Two columns from 768px; one below |
| 2 — Heading | `css/style.css` | h1 is 40px below 768px, 48px from 768px |
| 3 — Mobile | All three HTML pages, then CSS | Native expandable menu; links stack vertically |
| 4 — Wide navigation | Same CSS file | Full list replaces mobile details from 768px |
| 5 — Print | Same CSS file | No navigation; black text/headings; one-column grids |

After each completed group: **Save → Refresh → Test**. Use Command+S on Mac or Control+S on Windows. Keep the earlier completed CSS; append the new lesson below it.

## Navigation structure

The Home page header uses this structure. Copy each inner page's OWN original links when repeating it on Menu and Visit. Inner pages use `../index.html` for Home; keep the correct `aria-current="page"` link in both lists.

```html
        <nav aria-label="Primary">
          <details class="mobile-nav">
            <summary>☰ Menu</summary>
            <ul class="nav-list">
              <li><a href="index.html" aria-current="page">Home</a></li>
              <li><a href="pages/menu.html">Menu</a></li>
              <li><a href="pages/visit.html">Visit</a></li>
            </ul>
          </details>
          <ul class="nav-list desktop-nav">
            <li><a href="index.html" aria-current="page">Home</a></li>
            <li><a href="pages/menu.html">Menu</a></li>
            <li><a href="pages/visit.html">Visit</a></li>
          </ul>
        </nav>
```

`details` and `summary` provide the native interaction. The browser opens and closes the mobile list. The original list remains the desktop alternative. Update both copies if a destination changes. CSS displays one version at a time. Keep the native focus outline. No Escape-key handler or automatic close/reset behavior is added.

## CSS additions

Append these rules after the completed 2-5 CSS. Do not replace the earlier file with this excerpt.

```css

/* LESSON 2-6: Responsive styling. Continue from the completed 2-5 file. */

/* 1. Add columns when the viewport is at least 768px wide. */
@media (min-width: 768px) {
  .featured-row,
  .dish-grid {
    grid-template-columns: 1fr 1fr;
  }
}

/* 2. Increase the heading only on wider screens. */
@media (min-width: 768px) {
  h1 {
    font-size: 48px;
  }
}

/* 3. Use the native HTML disclosure menu on narrow screens. */
.desktop-nav {
  display: none;
}
.mobile-nav summary {
  cursor: pointer;
  padding: 8px 12px;
}
.mobile-nav .nav-list {
  flex-direction: column;
  align-items: flex-start;
}

/* Keep the full navigation visible on wider screens. */
@media (min-width: 768px) {
  .mobile-nav {
    display: none;
  }
  .desktop-nav {
    display: flex;
  }
}

/* 4. Simplify the printed page. */
@media print {
  nav,
  .skip-link {
    display: none;
  }
  body {
    background: white;
    color: black;
  }
  h1,
  h2,
  h3 {
    color: black;
  }
  .featured-row,
  .dish-grid {
    grid-template-columns: 1fr;
  }
}

```

## Check the result

- Test 767px, 768px, and 769px to verify the exact boundary.
- Check Home, Menu, and Visit at 320px, 375px, and 1280px as well.
- Open/close the mobile menu with click, Enter, and Space; Tab through its visible links.
- Follow Home/Menu/Visit links from every page and check the current-page styling.
- Resize an open menu to wide and back. Native details may retain its open state on the same page.
- Look for horizontal overflow, clipped text, and images outside their containers.
- Open actual Print Preview on Home and Menu with Command+P / Control+P. Check no navigation, black body/headings, and one-column grids, then cancel.

The video labels page viewport widths in CSS pixels. Preview images may be enlarged for readability. Browser responsive tools can set exact viewport widths; changing only the window width does not guarantee an exact CSS-pixel value.

Print page counts depend on browser, paper, margins, and settings. The recording shows actual Safari print previews and does not certify identical pagination on every printer. The existing external map embed remains unchanged.

## When something differs

Check the active working file, save state, refreshed browser address, selector spelling, comma placement, condition, braces, and source order. Compare the first checkpoint where your result differs. The HTML navigation additions are isolated to the primary nav; the earlier CSS is retained as an unchanged prefix.
