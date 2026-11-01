# Demo 3-4 JavaScript Applications

Current-semester classroom demo. Theme: **Campus Workshops**. The Earth Science applied labs and their instructions remain unchanged.

Open `student/index.html` for live teaching and `solution/index.html` for comparison. Keep each site with its own `css/` and, when introduced, `js/` folder.

## Teaching sequence

1. **Keep the previous page.** The starter is the exact Demo 3-3 solution. Edit only `js/workshops.js` for this first exercise.

2. **Read one value.** Inside `showReminder()`, add `const name = document.getElementById("name").value;`.

3. **Build one message.** Set feedback textContent to `"Hello, " + name + ". Please complete the form."`. Explain the variable, value, and string joining before asking students to type it.

4. **Test the small application.** Enter the fictional name `Practice Learner`. Click Preview reminder. Expect `Hello, Practice Learner. Please complete the form.`. The separate submit button still performs native validation.

5. **Bridge to the unchanged Lab 3-3.** Open the separate [lab bridge](lab-bridge/README.md). Work through external CSS, one generated link, two generated links, then published-address values. Those are the existing lab requirements. Keep each stage separate; do not add counters or new form applications.

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

<a href="Structure%20Map.png"><img src="Structure%20Map.png" alt="Demo 3-4 completed structure map" width="560"></a>
