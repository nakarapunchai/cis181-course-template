# Demo 3-1 structure map

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
      button[type="submit"] → native form submission
```

Match each label for value to its control ID. Keep related controls in their fieldset.
