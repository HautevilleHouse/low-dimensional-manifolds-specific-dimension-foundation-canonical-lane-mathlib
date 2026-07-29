import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure ClassificationPackage where
  dimTwoCase : Prop
  dimThreeCase : Prop
  uniformization : Prop
  geometrization : Prop
  dimTwoCaseClosed : dimTwoCase
  dimThreeCaseClosed : dimThreeCase
  uniformizationClosed : uniformization
  geometrizationClosed : geometrization

structure ClassificationEvidence (C : ClassificationPackage) where
  dimTwoCaseClosed : C.dimTwoCase
  dimThreeCaseClosed : C.dimThreeCase
  uniformizationClosed : C.uniformization
  geometrizationClosed : C.geometrization

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.dimTwoCase ∧ C.dimThreeCase ∧ C.uniformization ∧ C.geometrization

theorem classification_closed_from_evidence (C : ClassificationPackage)
    (E : ClassificationEvidence C) : ClassificationClosed C := by
  exact And.intro E.dimTwoCaseClosed
    (And.intro E.dimThreeCaseClosed
      (And.intro E.uniformizationClosed E.geometrizationClosed))

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse