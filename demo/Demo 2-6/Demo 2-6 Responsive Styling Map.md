# 2-6 — Responsive styling map

| Topic | Rule | Evidence |
| --- | --- | --- |
| Recap 2-5 | Flexible sizing; one-column layout | Home and Menu fit narrow widths |
| Grid condition | min-width: 768px; 1fr 1fr | Check 767/768/769px and both selectors |
| Heading condition | h1: 48px inside the width query | 40px narrow, 48px wide |
| Mobile navigation | details + summary; one displayed alternative | Pointer and keyboard access |
| Wide navigation | Base hide rule before the wide display override | Full list visible regardless of mobile open state |
| Print | Hide nav; black text/headings; one column | Actual Home/Menu Print Preview |

Diagnostic examples: missing selector comma, unsuitable grid threshold, heading rule outside the condition, and a base hiding rule placed after its wide override. Each example uses only the rules taught in 2-6.
