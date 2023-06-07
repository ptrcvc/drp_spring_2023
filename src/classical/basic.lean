import measure_theory.measurable_space
import data.real.basic
import analysis.special_functions.log.base
import measure_theory.measure.measure_space
import probability.probability_mass_function.basic

import algebra.big_operators.basic
import data.nat.interval

namespace shannon

open topological_space measure_theory.measure
open finset

variables {α : Type*}
variables {Ω E : finset ℝ} [measurable_space Ω] [measurable_space E]

def shannon_entropy [measurable_space α] (p : pmf α)  /-(X : Ω → E)-/ := 
  ∑' x, (λ x, (p x) * -1 * real.logb 2 ↑(p x))

end shannon