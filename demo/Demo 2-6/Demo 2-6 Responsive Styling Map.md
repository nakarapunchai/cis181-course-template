# Demo 2-6 map

Completed 2-5 → wider grid → wider heading → HTML mobile menu → mobile CSS → wide override → print.

| Step | Source | Check |
| --- | --- | --- |
| Start | 3 HTML pages + shared CSS + images | Same 2-5 one-column website |
| Grid | Append min-width: 768px query | .featured-row and .dish-grid: 1fr 1fr |
| Heading | Append matching query | h1: 48px wide; existing 40px narrow |
| Mobile HTML | All 3 primary nav sections | details.mobile-nav + summary + copied links; original .desktop-nav |
| Mobile CSS | Base rules | Hide desktop; pad summary; stack mobile list |
| Wide CSS | Later 768px query | Hide mobile; display desktop flex |
| Print | @media print | Hide nav; black text/headings; 1fr grids |

Predict → explain → type → save → refresh → test. Check 767/768/769 and 320/375/1280. Test native disclosure with click/Enter/Space/Tab, follow relative links, and inspect Home/Menu Print Preview.
