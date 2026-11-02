# Demo 2-6 — Responsive Styling

Continue the completed current-semester Demo 2-5 Thai Terrace website. This demonstration uses HTML and CSS only.

## Start

Copy the complete `student/` folder to a working folder. Keep the three pages, `css/style.css`, and images together. The initial code is the completed 2-5 layout: flexible sizes, one-column grids, and ordinary navigation. Preserve those earlier rules; append the 2-6 CSS below them.

## Teaching sequence

1. Explain the media query, then add two grid columns from 768px.
2. Explain the cascade, then add a 48px h1 override at the same width. Keep the 40px base.
3. In each HTML document, add native `details`/`summary` inside the primary nav and copy that page's three links inside. Give the original list both `nav-list` and `desktop-nav` classes. Keep paths and current-page labels correct.
4. Hide the desktop list in the base layout; stack the mobile links. From 768px, hide mobile details and display the original list.
5. Add `@media print`: hide nav/skip link, use a white body with black text/headings, and return both grids to one column.

Use short explanations followed by live editing, Save, Refresh, and browser checks. The two navigation lists must stay synchronized. The browser supplies details interaction; no helper file, inline handler, Escape behavior, or scripted reset is added.

## Verify

Check all three pages at 320, 375, 767, 768, 769, and 1280px. Test click, Enter, Space, Tab, current-page styling, and actual link destinations. Resize an open menu across the breakpoint and back. Native details can retain its open state on the same page. Inspect actual Home/Menu Print Preview, then cancel.

## Materials

- [Starting Home](student/index.html)
- [Completed Home](solution/index.html)
- [Matching editable slides](Lesson%202-6%20Responsive%20Styling.pptx)
- [Matching visual map](Demo%202-6%20Responsive%20Styling%20Map.png)
- [Editable map and teaching sequence](Demo%202-6%20Responsive%20Styling%20Map.md)
- [Detailed follow-along guide](Follow-Along%20Guide.md)

This revision replaces the former consolidated starter and supplied-JavaScript approach. Current-semester labs and other demos remain unchanged.
