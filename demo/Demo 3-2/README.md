# Demo 3-2 Data Validation

Current-semester classroom demo. Theme: **Campus Workshops**. The Earth Science applied labs and their instructions remain unchanged.

Open `student/index.html` for live teaching and `solution/index.html` for comparison. Keep each site with its own `css/` and, when introduced, `js/` folder.

## Teaching sequence

1. **Keep the previous work.** Start from the exact completed Demo 3-1 page and CSS. The table, labels, fieldsets, focus styles, Name autofocus, and comments placeholder stay.

2. **Required text.** Add `required` to Name and Email. Change Email from `type="text"` to `type="email"`.

3. **Required selection.** Add `required` to the workshop select. Keep its first option with an empty value. Add `required` to the In person radio; both radios retain `name="format"`, so either choice satisfies the group.

4. **Test one constraint at a time.** Try submitting empty fields. Fill Name, then test an invalid email. Choose a workshop and either format, then test again with fictional data.

5. **Separate optional controls.** Comments and updates stay optional. No regex pattern, custom validation script, length rules, or error-style selector is required. Native browser validation is enough for this lesson and the current Lab 3-1.

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

<a href="Structure%20Map.png"><img src="Structure%20Map.png" alt="Demo 3-2 completed structure map" width="560"></a>
