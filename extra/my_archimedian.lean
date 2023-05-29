import data.int.least_greatest
import data.rat.floor
import data.real.basic

open int set

-- density of rationals
example ( x y : ℝ ) ( r : ℚ ) /-( n : ℕ )-/ ( hlt : x < y ) : ∃ r, r ∈ set.Ioo x y :=
begin

  let ε := y - x,
  have hε : ε > 0, { exact sub_pos.mpr hlt },

  -- what
  -- have hs1 : ∃ n : ℕ, 0 < (1/n):ℚ ∧ (1/n):ℚ < ε, { sorry }

  have ha : ∃ (q : ℚ), ↑q ∈ (set.Ioo 0 ε) : set ℝ, { 
      rw set.Ioo at ⊢,

      use (1/n : ℕ):ℚ,      
      --use (1/n),

      apply exists_pos_rat_lt,
  },



end


--example ( x y : ℝ ) ( r : ℚ ) /-( n : ℕ )-/ ( hlt : x < y ) : ∃ r, r ∈ set.Ioo x y := 
