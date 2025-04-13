---
sidebar_position: 2
---

Numerically finds a root of `func`$\colon\R\to\R$ using the Newton-Raphson method with `estimate` as a starting guess and `iterations` iterations

## Syntax
`nsolve(func; estimate, iterations)` - <u>Numeric</u>, <u>Symbolic</u>

### Arguments

`func` - any continuous callable taking 1 `Number` and returning 1 `Number`<br />
`estimate` - any `Number` - optional (default = 0)<br />
`iterations` - any `Int` - optional (default = 10)

## Example usage

<u>Numeric</u>
```julia
f(x) = x-1
nsolve(f)  # 1.0
```

<u>Symbolic</u>
```julia
@sym x
nsolve(x^2-3)  # 1.7320508075688774
```

```julia
@sym x
nsolve(x^2, estimate=0.01, iterations=15)  # 3.0517578125e-7
```

## Notes
I initially wrote it from memory, having heard of Newton's method 2 years ago, the result was a solver that only worked for strictly growing/shrinking functions. It's still included in the package as `Jellyfish.reallybadsolver()`.
