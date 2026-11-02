# Bridge to the current Applied Lab 3-3

The existing Earth Science lab is unchanged. This workshop-themed bridge introduces its required techniques in small stages. Work in a copy. The public example owner/repository values in local stages are supplied data, not values to submit for your own assignment.

| Stage | New concept | Run it |
| --- | --- | --- |
| [A — External CSS](A-external-css/student/index.html) | Move the embedded style rules into `css/style.css`; replace `style` with a stylesheet link | Locally |
| [B — One link](B-one-link/student/index.html) | One function selects one placeholder, creates one anchor, sets its href/text, and replaces the placeholder | Locally, with supplied sample values |
| [C — Two links](C-two-links/student/index.html) | `querySelectorAll` selects two placeholders; a simple `for` loop repeats the same known steps | Locally, with supplied sample values |
| [D — Published address](D-published-address/student/index.html) | Replace the two sample-value lines with hostname/pathname values | From a project GitHub Pages URL |

Each stage has a separate `student/` and `solution/` folder. Each new starter is the previous completed stage, so you can continue in one working copy. Complete one stage before opening the next.

<a href="Address%20Map.png"><img src="Address%20Map.png" alt="Stages from one generated link to repository links from a published address" width="560"></a>

[Editable map](Address%20Map.svg)

## A — Move the existing CSS

Open the starter `index.html`. Copy all rules from its `style` element to the supplied `css/style.css`, remove `style`, and add `<link rel="stylesheet" href="css/style.css">` in `head`. The visual result should stay the same. Do not add a second site layout.

## B — Create one anchor

Create `js/links.js` and reference it before `</body>`. Use the public sample owner `nakarapunchai` and repository `cis181-course-template` strings for local practice. Find `span#repo-link`. Create an anchor with `document.createElement("a")`, build its `href`, set `textContent`, and use `replaceWith` on that one span. Call `buildOneLink()` after its definition. Preview: only the first row changes; the second row is reserved for Stage C.

Expected first link: `https://github.com/nakarapunchai/cis181-course-template/tree/main/lab1-4/`.

## C — Repeat the same steps for two placeholders

1. Select the two placeholders with `document.querySelectorAll(".repo-link")`.
2. Use `for (let i = 0; i < placeholders.length; i++)` to visit index 0 and index 1.
3. Read `data-repo-folder` from the current placeholder with `getAttribute`.
4. Create one anchor, build its href with that folder, and set its text.
5. Replace that placeholder. Keep all these steps inside the loop.
6. Call `buildRepositoryLinks()` once after the function definition.

Explain one pass through the loop before running both rows. There is no arrow callback, template literal, URL object, or generated navigation system.

## D — Read the published address

Keep Stage C’s loop. Replace only the two supplied sample-value assignments:

```js
const owner = window.location.hostname.replace(".github.io", "");
const repository = window.location.pathname.split("/")[1];
```

For `https://studentname.github.io/cis181_sample_j/lab3-3/`:

| Part | Value |
| --- | --- |
| hostname | `studentname.github.io` |
| owner after removing `.github.io` | `studentname` |
| pathname | `/cis181_sample_j/lab3-3/` |
| split index 0 | empty string |
| split index 1 — repository | `cis181_sample_j` |
| split index 2 — current lab | `lab3-3` |

The repository is the first nonempty path segment, not the current lab folder. This matches the course’s project GitHub Pages address format. Localhost cannot provide a student’s GitHub owner/repository; test this final stage after publishing your own working copy.

## Transfer to the lab

Apply the same steps to the existing Lab 3-3 starter’s `css/index.css`, `js/home.js`, provided placeholders, and `buildRepositoryLinks()` function. Use the original assignment instructions and the student’s own published address. Keep its existing live-website links. No lab files or grading requirements were changed by this demo revision.
