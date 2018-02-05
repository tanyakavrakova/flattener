# Flattener

Flattener is a module that contains functions for list flattening.

## How to run it:

```iex
$ iex -S mix
iex> Flattener.flatten([[[[], [], [[[], []]]],"a"], ["b", "c"], ["d", ["e", "f"]]])
["a", "b", "c", "d", "e", "f"]
```
