module Jellyfish


# Dependencies

import Plots
import SymPy
import PyCall
import Unitful
import Richardson
import TaylorSeries
import PhysicalConstants.CODATA2022


# Options

SOLVEWARNINGS = true
TaylorSeries.displayBigO(false)
export SOLVEWARNINGS

# Submodules

include("utils/MathUtils.jl")
include("utils/Consts.jl")
include("utils/InputChecks.jl")
export @sym, physconst

# Constants

# system
#const _x = @sym _x
#const _y = @sym _y
#const _z = @sym _z
#export _x,_y,_z

# math
# perhaps include some of these in Constants.jl instead ?
const e = Base.MathConstants.e
const GOLDEN = Base.MathConstants.golden
const EULERGAMMA = Base.MathConstants.γ
const APERY = 1.20205690315959428539973816151144999076498629234049
const CATALAN = 0.91596559417721901505460351493238411077414937428167
const FEIGENBAUM_ALPHA = 4.66920160910299067185320382046620161725818557747576
const FEIGENBAUM_DELTA = 2.50290787509589282228390287321821578638127137672714
export e, GOLDEN, EULERGAMMA, APERY, CATALAN, FEIGENBAUM_ALPHA, FEIGENBAUM_DELTA

# sets
#const SPS = sympy.S
const ℕ = SymPy.sympy.Naturals()
const ℤ = SymPy.sympy.Integers()
const ℚ = SymPy.sympy.Rationals()
const ℝ = SymPy.sympy.Reals()
const ℂ = SymPy.sympy.Complexes()

export ℕ,ℤ,ℚ,ℝ,ℂ


const NATURALS  = ℕ
const INTEGERS  = ℤ
const RATIONALS = ℚ
const REALS     = ℝ
const COMPLEXES = ℂ

export NATURALS,INTEGERS,RATIONALS,REALS,COMPLEXES



include("math/Calculus.jl")
include("math/VectorCalculus.jl")
include("math/NumericVectorCalculus.jl")
include("math/NumericMath.jl")
include("math/Statistics.jl")
include("math/Solvers.jl")
export dif, int, tpoly, nlim, nsolve, ndiv, ncurl, sem, propsem, zscore, chisq, grad, divg, curl, solve

include("legacy/2DPlotting.jl")
include("legacy/PlotScalarField.jl")
include("legacy/ReallyBadSolver.jl")
export plot, plotscalarfield, reallybadsolver





end
