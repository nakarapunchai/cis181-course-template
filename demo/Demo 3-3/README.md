# Demo 3-3 JavaScript Basics

Current-semester classroom demo. Theme: **Campus Workshops**. The Earth Science applied labs and their instructions remain unchanged.

Open `student/index.html` for live teaching and `solution/index.html` for comparison. Keep each site with its own `css/` and, when introduced, `js/` folder.

## Teaching sequence

1. **Keep the validated form.** Begin with the exact Demo 3-2 solution. No JavaScript file is supplied in this starter; create `js/workshops.js` during the walkthrough. Keep all earlier HTML/CSS.

2. **Add one button.** Inside the form before the submit button, add a paragraph containing `<button type="button" onclick="showReminder()">Preview reminder</button>`. Its type prevents form submission.

3. **Add one output.** Immediately after that paragraph, add `<p id="feedback">Your reminder will appear here.</p>`.

4. **Create and link one script.** Create `js/workshops.js`. Before `</body>`, add `<script src="js/workshops.js"></script>`.

5. **Write one function.** Write `function showReminder() { ... }`. Inside it, set `document.getElementById("feedback").textContent` to `"Choose a workshop and complete the form."`.

6. **Explain and test.** Point to the button event, function name, paragraph ID, and textContent. Click Preview reminder, then test Submit practice form separately. No listener callbacks, arrow functions, data-event attributes, counters, or loops are added here.

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

This lesson prepares the introductory scripting work for the existing **Applied Lab 3-3**, which assesses Lessons 3-3 and 3-4. The separate 3-4 bridge covers the original repository-link task.

<a href="Structure%20Map.png"><img src="Structure%20Map.png" alt="Demo 3-3 completed structure map" width="560"></a>

## Extended lecture and walkthrough

This version includes guided practice and saved cumulative checkpoints. The downloadable video package includes a detailed guide and checkpoint snapshots. Every main starter continues the preceding completed site.
