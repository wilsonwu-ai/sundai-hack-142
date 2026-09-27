/-!
# Kernel-checked certificate for the Sundai Grothendieck-constant witness

Witness (2 x 2 CHSH sign matrix, 2-dimensional rational unit vectors):

    A  = [[1, 1], [1, -1]]
    u1 = (-195, -28) / 197     u2 = (28, -195) / 197
    v1 = (-3, -4) / 5          v2 = (-4, 3) / 5

Every vector is a primitive Pythagorean point `(x, y, hyp)` meaning `(x/hyp, y/hyp)`.
Everything below is core Lean 4 (no Mathlib), proved by `decide` in the kernel.
`native_decide` is deliberately not used.
-/

namespace Grothendieck

/-! ## (i) Unit-vector claims: `x^2 + y^2 = hyp^2` over `Int` -/

theorem u1_unit : (-195 : Int) ^ 2 + (-28) ^ 2 = 197 ^ 2 := by decide
theorem u2_unit : (28 : Int) ^ 2 + (-195) ^ 2 = 197 ^ 2 := by decide
theorem v1_unit : (-3 : Int) ^ 2 + (-4) ^ 2 = 5 ^ 2 := by decide
theorem v2_unit : (-4 : Int) ^ 2 + 3 ^ 2 = 5 ^ 2 := by decide

/-! ## (ii) Sign optimum `sign(A) = 2` -/

/-- The sign matrix `A`, 0-indexed. -/
def A : Fin 2 → Fin 2 → Int
  | 0, 0 => 1
  | 0, 1 => 1
  | 1, 0 => 1
  | 1, 1 => -1

/-- Bilinear form `sum_ij A_ij x_i y_j` for scalar signs. -/
def bil (x1 x2 y1 y2 : Int) : Int :=
  A 0 0 * x1 * y1 + A 0 1 * x1 * y2 + A 1 0 * x2 * y1 + A 1 1 * x2 * y2

/-- Encode a sign as a Boolean so the 16 cases are a finite `decide` problem. -/
def sgn (b : Bool) : Int := if b then 1 else -1

/-- All 16 sign patterns give a bilinear value of at most 2. -/
theorem sign_le_two_bool : ∀ a b c d : Bool, bil (sgn a) (sgn b) (sgn c) (sgn d) ≤ 2 := by
  decide

/-- Same statement with signs quantified over `Int` restricted to `{-1, 1}`. -/
theorem sign_le_two (x1 x2 y1 y2 : Int)
    (h1 : x1 = 1 ∨ x1 = -1) (h2 : x2 = 1 ∨ x2 = -1)
    (h3 : y1 = 1 ∨ y1 = -1) (h4 : y2 = 1 ∨ y2 = -1) :
    bil x1 x2 y1 y2 ≤ 2 := by
  rcases h1 with rfl | rfl <;> rcases h2 with rfl | rfl <;>
    rcases h3 with rfl | rfl <;> rcases h4 with rfl | rfl <;> decide

/-- The value 2 is attained (all signs `+1`). -/
theorem sign_attained : bil 1 1 1 1 = 2 := by decide

/-- `sign(A) = 2`: an upper bound on every sign pattern, and a pattern attaining it. -/
theorem sign_opt_eq_two :
    (∀ a b c d : Bool, bil (sgn a) (sgn b) (sgn c) (sgn d) ≤ 2) ∧
    (∃ a b c d : Bool, bil (sgn a) (sgn b) (sgn c) (sgn d) = 2) :=
  ⟨sign_le_two_bool, ⟨true, true, true, true, by decide⟩⟩

/-! ## (iii) Vector objective lower bound

Scaling. With `u_i = U_i / 197` and `v_j = V_j / 5` for integer vectors `U_i`, `V_j`,

    vector(A; u, v) = sum_ij A_ij <u_i, v_j> = (sum_ij A_ij <U_i, V_j>) / (197 * 5).

So `vecScaled := sum_ij A_ij <U_i, V_j>` equals `985 * vector(A; u, v)` and is an integer.
The rational claim

    vector(A; u, v) / sign(A) >= 1414213 / 1000000,  i.e.  vector >= 2 * 1414213 / 1000000,

multiplied through by the positive number `985 * 1000000`, becomes the integer inequality

    vecScaled * 1000000 >= 2 * 1414213 * 985.

We also record the exact value `vecScaled = 2786`, i.e. `vector = 2786/985`, and the
exact ratio `vector / sign = 1393/985`. The upper inequality `vecScaled * 1000000 <
2 * 1414214 * 985` shows `gap_ppm = floor(10^6 * ratio) = 1414213` exactly.
-/

def U1 : Int × Int := (-195, -28)
def U2 : Int × Int := (28, -195)
def V1 : Int × Int := (-3, -4)
def V2 : Int × Int := (-4, 3)

def dot (p q : Int × Int) : Int := p.1 * q.1 + p.2 * q.2

/-- `985 * vector(A; u, v)` as an integer. -/
def vecScaled : Int :=
  A 0 0 * dot U1 V1 + A 0 1 * dot U1 V2 + A 1 0 * dot U2 V1 + A 1 1 * dot U2 V2

theorem vecScaled_eq : vecScaled = 2786 := by decide

/-- Cleared-denominator form of `vector / sign(A) >= 1414213 / 10^6` (with `sign(A) = 2`). -/
theorem vector_lower_bound : vecScaled * 1000000 ≥ 2 * 1414213 * 985 := by decide

/-- Cleared-denominator form of `vector / sign(A) < 1414214 / 10^6`, pinning `gap_ppm = 1414213`. -/
theorem vector_upper_bound : vecScaled * 1000000 < 2 * 1414214 * 985 := by decide

end Grothendieck

#print axioms Grothendieck.u1_unit
#print axioms Grothendieck.u2_unit
#print axioms Grothendieck.v1_unit
#print axioms Grothendieck.v2_unit
#print axioms Grothendieck.sign_le_two_bool
#print axioms Grothendieck.sign_le_two
#print axioms Grothendieck.sign_attained
#print axioms Grothendieck.sign_opt_eq_two
#print axioms Grothendieck.vecScaled_eq
#print axioms Grothendieck.vector_lower_bound
#print axioms Grothendieck.vector_upper_bound
