// Supplied Lesson 2-6 helper: the student task is responsive CSS.
const navigation = document.querySelector('.site-nav');
const button = navigation.querySelector('.nav-toggle');
const links = navigation.querySelector('.nav-list');
const wideScreen = window.matchMedia('(min-width: 768px)');
let lastFocused = document.activeElement;
document.addEventListener('focusin', (event) => { lastFocused = event.target; });

function setOpen(open) {
  navigation.classList.toggle('is-open', open);
  button.setAttribute('aria-expanded', String(open));
}

// Reveal the button only when the toggle behavior is available.
button.hidden = false;
navigation.classList.add('nav-ready');
button.addEventListener('click', () => {
  setOpen(button.getAttribute('aria-expanded') !== 'true');
});
navigation.addEventListener('keydown', (event) => {
  if (event.key === 'Escape' && !wideScreen.matches &&
      button.getAttribute('aria-expanded') === 'true') {
    setOpen(false);
    button.focus();
  }
});
wideScreen.addEventListener('change', () => {
  // Keep keyboard focus on a visible control when crossing the breakpoint.
  const focusInLinks = links.contains(document.activeElement) || links.contains(lastFocused);
  const focusOnButton = document.activeElement === button || lastFocused === button;
  setOpen(false);
  if (!wideScreen.matches && focusInLinks) button.focus();
  if (wideScreen.matches && focusOnButton) links.querySelector('a').focus();
});
