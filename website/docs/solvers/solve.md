---
sidebar_position: 1
---

Solves an n-dimensional system of equations `eq` with respect to `var` symbolically.

## Syntax
`solve(eq, var)` - <u>Symbolic</u><br />

### Arguments

`eq` Symbolic callable or tuple of symbolic callables<br />
`var` Any `Sym` or tuple of `Sym`s equal in length or shorter than `eq`

## Example usage

```julia
@sym x
solve(x - 1)
```

```julia
Dict{SymPyCore.Sym{PyCall.PyObject}, SymPyCore.Sym{PyCall.PyObject}} with 1 entry:
  x => 1
```

```julia
@sym x,y
solve((x+y-1, x-0.5))[y]  # 0.500000000000000
```

```julia
@sym e,m,c
solve((e-m*c^2, c-physconst("c")), (m,c))
```

```julia
1-element Vector{Tuple{SymPyCore.Sym{PyCall.PyObject}, SymPyCore.Sym{PyCall.PyObject}}}:
 (1.11265005605362e-17*e, 299792458.000000)
```

## Known issues

Transcendental function can currently be solved, although the output is difficult to read and parse.

## Notes

Many hours were spent causing segfaults, until it was discovered that PyJulia's garbage collector clears global variables making domain solving impossible with the planned implementation.