import canonicalLaneMathlib.AdmissibleClass
import LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean.LowDimBettiNumbers

/-!
# Low-Dimensional Manifold Classification Package
-/

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure ClassificationPackage (B : BettiNumbersPackage) where
  sphereTheorem : Prop
  torusTheorem : Prop
  lensSpaceClassification : Prop
  connectedSumDecomposition : Prop

structure ClassificationEvidence {B : BettiNumbersPackage} (C : ClassificationPackage B) where
  sphereTheoremClosed : C.sphereTheorem
  torusTheoremClosed : C.torusTheorem
  lensSpaceClassificationClosed : C.lensSpaceClassification
  connectedSumDecompositionClosed : C.connectedSumDecomposition

def ClassificationClosed {B : BettiNumbersPackage} (C : ClassificationPackage B) : Prop :=
  C.sphereTheorem ∧ C.torusTheorem ∧ C.lensSpaceClassification ∧ C.connectedSumDecomposition

theorem classification_closed_from_evidence {B : BettiNumbersPackage} (C : ClassificationPackage B) (E : ClassificationEvidence C) : ClassificationClosed C := by
  exact And.intro E.sphereTheoremClosed (And.intro E.torusTheoremClosed (And.intro E.lensSpaceClassificationClosed E.connectedSumDecompositionClosed))

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse
