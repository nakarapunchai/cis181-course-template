# Demo 3-4 structure map

Selected relationships in the completed page. Paragraph rows collapse labels, line breaks, and controls onto one diagram line for readability; arrows indicate containment.

```text
body
  header → h1 Campus Workshops
  main
    h2 Choose a workshop
    table
      thead → tr → two th[scope="col"]
      tbody → three workshop rows
    h2 Workshop sign-up
    form[method="post"]
      fieldset → legend Your information
        p → label[for="name"] + input#name
        p → label[for="email"] + input#email
      fieldset → legend Workshop choice
        p → label[for="workshop"] + select#workshop
        p → format prompt
        p → input#in-person + label + input#online + label
      p → label[for="comments"] + textarea#comments
      p → input#updates + label
      p → button[type="button"] calls showReminder()
      p#feedback → message output
      button[type="submit"] → native form submission
  script → js/workshops.js
```

Name input.value → const name → joined text → feedback.textContent.
