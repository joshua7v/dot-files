# general

- do not write any md files like README USAGE CHANGES, unless you were told to do so
- architecture design update should be synced with agents.md(create one if not exist) for later reference.
- agent.md should be concise, don't put too much in the agent.md, it is a file maintained by both agents and programmers.
- always check agent.md first if it exists to get the knowledge of the whole project.
- do not use any emoji in code or in documentations

# Code style

- always use linux style new lines
- always write comments with English
- comments should always start with lowercase and without period at the end
- do not add too much unnecessary comments, code should be simple and self documenting, add comments only when necessary

## typescript

- prefer type instead of interface
- prefer single quote string
- prefer camelCase instead of kebab-case

## react native

- components should only contain short hooks, if a hook is complex, it should be placed outside of the component, it can still be placed within the same component file with a meaningful name.

## vue

- prefer to put template at the top, script in the middle
