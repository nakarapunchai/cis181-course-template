# 2-6 — Responsive Styling

Use viewport conditions to change grid columns, heading size, and navigation. Check print behavior as a separate media condition.

## Responsive rules

```css
@media (min-width: 768px) {
  .featured-row, .dish-grid {
    grid-template-columns: 1fr 1fr;
  }
}

@media (min-width: 768px) {
  h1 { font-size: 48px; }
}
```

At 767px the grids use one column and h1 is 40px. From 768px, they use two columns and h1 is 48px. The condition includes 768px.

## Mobile navigation

Inside the primary nav, use `details.mobile-nav` with a `summary` control and the page’s three links. Add `desktop-nav` as a second class on the list after details. Retain the page-specific link destinations and current-page marking.

```css
.desktop-nav { display: none; }
.mobile-nav summary {
  cursor: pointer;
  padding: 8px 12px;
}
.mobile-nav .nav-list {
  flex-direction: column;
  align-items: flex-start;
}
@media (min-width: 768px) {
  .mobile-nav { display: none; }
  .desktop-nav { display: flex; }
}
```

Test click, Enter, Space and Tab. Resize with the disclosure open and closed. At the wide size, the full list must be available in either case.

## Print

```css
@media print {
  nav, .skip-link { display: none; }
  body { background: #fff; color: #000; }
  h1, h2, h3 { color: #000; }
  .featured-row, .dish-grid { grid-template-columns: 1fr; }
}
```

Inspect Home and Menu in the browser’s Print Preview, then cancel. Verify that navigation is absent, text/headings are black, and both grids use one column.

## Diagnostic exercises

Make one controlled change at a time. Predict its effect, inspect the result, explain the cause, and restore the correct rule before continuing.

| Test change | Observe | Repair and verify |
| --- | --- | --- |
| Remove the comma between `.featured-row` and `.dish-grid` | At 1280px, neither grid changes to two columns: the descendant relationship matches neither target | Restore the comma; check Home and Menu, then a width below 768px |
| Change only the grid threshold to 375px | At 375px, Home cards become about 157px wide, despite no horizontal overflow | Restore 768px; compare readable card widths on Home and Menu |
| Put the 48px h1 rule outside the media query | At 375px, the grid has one column but h1 is already 48px | Enclose h1 in the width query; check h1/grid at 375px and 768px |
| Move the base `.desktop-nav { display: none; }` rule below the wide query | The mobile disclosure still works at 375px, but both navigation alternatives are hidden at 1280px | Put the base rule before the wide override; test both widths, open/closed states, and keyboard access |

### Card-width reasoning for Home

Home’s container is 92% wide and the featured grid gap is 32px.

- At 375px: container ≈ 345px; two columns receive `(345 − 32) / 2 = 156.5px` each.
- At 375px with one column: the card receives about 345px.
- At 768px: container ≈ 706.6px; two columns receive `(706.6 − 32) / 2 ≈ 337.3px` each.

A layout can fit without being easy to read. Use actual card titles, descriptions and images to evaluate the breakpoint. The Menu grid has a different gap and content, so verify it separately.

## Final checks

Test 767px, 768px and 769px; inspect all three pages at narrow/wide widths; confirm usable links and visible keyboard focus; inspect Home/Menu Print Preview. Browser and printer settings can change pagination.
