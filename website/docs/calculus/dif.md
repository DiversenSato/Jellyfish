---
sidebar_position: 1
---

Computes the `order`'th order partial derivative of a callable `func`$\colon \R^n \to \mathbb \R^n$ with respect to `var` using symbolic differentiation.

## Syntax
`dif(func; var, order)` - <u>Symbolic</u>

### Arguments

`func` - any symbolic differentiable callable<br />
`var` - any `Sym` - optional for functions defined in \(\mathbb R\)<br />
`order` - any `Number`

## Example usage
```julia
@sym x
dif(sin(x))  # cos(x)
```

```julia
@sym x,y
f(x,y) = y*x^3
dif(f(x,y), x, order=2)  # 6⋅x⋅y
```

## Notes
Originally meant to be called `diff()`, this apparently conflicted with `Base.diff()`. At least it's similar to `int()` now.
