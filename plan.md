### The plan

1. fetch command
   1. through command or;
   2. through history;
2. parse command
3. return code 0 for match
4. run script on background
5. script must catch any activity in other terminals

### Considerations

1. agnostic shell approach (any shell should be treated the same)
2. apply escalating privilege system