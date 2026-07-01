---
name: checkpoint
description: Review the changes to see if we are in good state to commit the changes.
argument-hint: "Can we commit the changes now?"
---

Review current code changes to see if we are in good state to commit the chages. List the most important issues we must resolve before committing.

Focus on the architecture design, especially on things that would bite you later if commit now like db schema design.

Suggest fixes on reporting issues, and show what best practices developers usually do target the same issue.

You can use fallow skill to see if there are any bad code smell in the change, and refactor the code to fix them
