# Filediff
File diff utility (literally uses `diff`, what did you think it was?)

---

## Usage:
`filediff <command> [arguments]`

## Output:
If the output of the given command is an empty string, only the diff created by the given command is shown.
Else, the output of the command is shown first, followed by one blank line and the colored output of the diff created by the command itself.

# Todo:
- [ ] Accept two paths instead of a command (check if **only** two arguments, then check if both are directories)
- [ ] Accept command line arguments - like "save the current tree so I can perform multiple operations" and then "display me the diff from the saved tree" - and similar
