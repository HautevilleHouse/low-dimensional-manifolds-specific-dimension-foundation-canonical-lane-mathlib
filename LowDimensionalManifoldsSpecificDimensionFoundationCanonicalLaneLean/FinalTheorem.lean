import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

def ConstrainedLowDimClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_low_dim_endgame (A : AdmissibleClass) :
    ConstrainedLowDimClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse
