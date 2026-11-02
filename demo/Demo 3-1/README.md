# Demo 3-1 Web Usability and Accessibility

Current-semester classroom demo. Theme: **Campus Workshops**. The Earth Science applied labs and their instructions remain unchanged.

Open `student/index.html` for live teaching and `solution/index.html` for comparison. Keep each site with its own `css/` and, when introduced, `js/` folder.

## Teaching sequence

1. **Table headings.** Wrap the existing heading row in `thead` and the three data rows in `tbody`. Add `scope="col"` to both `th` elements. Keep the workshop data.

2. **Labels.** Add a matching `for` to every label: `name`, `email`, `workshop`, `in-person`, `online`, `comments`, and `updates`. Click each label to test its control.

3. **Control groups.** Group Name and Email in `fieldset` with legend `Your information`. Group the workshop select and format radios in a second fieldset with legend `Workshop choice`. Keep comments, updates and submit after these groups.

4. **Name and comments.** Add `autofocus` to Name, as required by the current Lab 3-1. Add the textarea placeholder `Tell us what you would like to learn.` Observe that autofocus can move the cursor when the page opens.

5. **Focused CSS.** Add `fieldset` min-width `0`, border `1px solid #748c98`, margin `0 0 18px`, padding `12px`; bold legends. Add an outline of `3px solid #a34b00` and outline-offset `2px` to focused input, select, textarea, and button controls.

6. **Browser check.** Use Tab and click labels. Confirm that Name and Email share a group, workshop/format share a group, and the table keeps all three rows. Do not add required/email validation yet; that is Demo 3-2.

## How to teach each step

Read the relevant map group, locate it in the code, make one small edit, save, and preview. Ask students to predict the result before refreshing. Stop at each completed group and let them compare their own work. Duration follows the content; no fixed lesson time is imposed.

## Scope

One short workshop table and one form. No decorative cards, CSS variables, `clamp()`, shadows, animation, hidden navigation, `:focus-visible`, custom validation, or unrelated JavaScript features. The supplied plain styling supports the example; students focus on this lesson’s numbered steps.

## Files

- [Starter](student/index.html)
- [Completed reference](solution/index.html)
- [Structure map image](Structure%20Map.png)
- [Editable SVG map](Structure%20Map.svg)
- [Map notes](Structure%20Map.md)

## Connection to the labs

This lesson helps prepare the table/form/usability work in the existing **Applied Lab 3-1**, which assesses Lessons 3-1 and 3-2.

<a href="Structure%20Map.png"><img src="Structure%20Map.png" alt="Demo 3-1 completed structure map" width="560"></a>

## Extended lecture and walkthrough

This version includes guided practice and saved cumulative checkpoints. The downloadable video package includes a detailed guide and checkpoint snapshots. Every main starter continues the preceding completed site.
