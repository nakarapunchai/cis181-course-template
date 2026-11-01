# Demo 2-6 Responsive Styling

Current-semester Thai Terrace demo. Continue the completed 2-5 design. The original page content and three-page organization stay. The heading-free welcome group uses `div.hero` rather than an unheaded section; its CSS class and appearance stay the same. The supplied CSS baseline is consolidated, and decorative shadow/rounded-corner/letter-spacing rules are removed so students can find the new work. The four task requirements and supplied navigation helper are retained.

## Four CSS steps

1. **Two wider columns:** add `@media (min-width: 768px)` and give `.featured-row, .dish-grid` two `1fr` columns. Preview at 767px and 768px before continuing.
2. **Wider heading:** at the same breakpoint, change `h1` from 40px to 48px. Change one rule and compare.
3. **Hamburger navigation:** follow the existing TODO 3 CSS. The button HTML and `js/navigation.js` are supplied. Teach only the visibility/row/column rules students write; use the helper without asking students to reproduce it.
4. **Print:** hide navigation/skip link, use black text on white, and return the grids to one column in `@media print`.

## Teaching rhythm

Show the relevant map group, locate the selector, predict one change, edit, save and preview. Stop after each task. Use Home, Menu and Visit to verify the same navigation behavior. Explain 767px/768px/769px with the browser rather than adding more breakpoints.

## Checkpoints

- Starter: completed 2-5 layout, one column at all widths, visible navigation links.
- Solution below 768px: one column, Menu button, links reveal on activation.
- Solution from 768px: two columns where specified, 48px heading, full navigation row.
- Keyboard: Enter/Space toggle; Escape closes the menu. Hidden links stay out of Tab order. Resize and confirm focus stays usable. These behaviors are supplied by the helper.
- Print Preview: no navigation; black text/heading on white; one column.

No new HTML/JavaScript writing task, new images, animation, additional breakpoint, or decorative feature is introduced.

## Materials

- [Starter Home](student/index.html)
- [Completed Home](solution/index.html)
- [Original presentation](Lesson%202-6%20Responsive%20Styling.pptx)
- [Original visual map](Demo%202-6%20Responsive%20Styling%20Map.png)
- [Original editable map](Demo%202-6%20Responsive%20Styling%20Map.docx)

The original presentation/map still describe the same four tasks and DOM structure. This cleanup changes the supplied baseline presentation, not the tasks. Applied labs remain unchanged.
