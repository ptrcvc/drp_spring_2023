import measure_theory.measurable_space
import data.real.basic
import analysis.special_functions.log.base
import measure_theory.measure.measure_space
import probability.probability_mass_function.basic

namespace shannon

-- these do.. something
open topological_space measure_theory.measure

/- 
  a first try at it. the key is probability mass functions, clearly, but
  in mathlib it has a clunkier definition than probability density functions
  which i tried to shove in here

variables {Ω E : Type*} [measurable_space E]

def shannon_entropy (X : Ω → E) (p : pmf α) :=
  finset.sum
    Ω,
    (λ (x : Ω), (p x) * - real.logb 2 (p x))
-/

-- use variables, this is clunky
-- here:
variables {Ω E : finset ℝ} [measurable_space Ω] [measurable_space E]

/- 
  want a way to get our pmf, this is a mess but want to either infer
  it from X or have it defined before when it is used in practice
  like normal
-/ 

def shannon_entropy (X : Ω → E) [p : to_pmf μ] :=
  finset.sum
    Ω,
    (λ (x : Ω), (p x) * - real.logb 2 (p x))


end shannon