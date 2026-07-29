import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure SurfaceClassificationPackage where
  genus: ℕ
  orientable: Prop
  eulerCharacteristic: ℤ
  classificationStatement: Prop

structure SurfaceClassificationEvidence (S: SurfaceClassificationPackage) where
  genusNonNegative: S.genus ≥ 0
  orientableClosed: S.orientable
  eulerCharacteristicFormula: S.eulerCharacteristic = (if S.orientable then 2 - 2*S.genus else 2 - S.genus)
  classificationStatementClosed: S.classificationStatement

def SurfaceClassificationClosed (S: SurfaceClassificationPackage): Prop :=
  S.genus ≥ 0 ∧ S.orientable ∧ S.eulerCharacteristic = (if S.orientable then 2 - 2*S.genus else 2 - S.genus) ∧ S.classificationStatement

theorem surface_classification_closed_from_evidence (S: SurfaceClassificationPackage) (E: SurfaceClassificationEvidence S):
  SurfaceClassificationClosed S := by
  exact And.intro E.genusNonNegative (And.intro E.orientableClosed (And.intro E.eulerCharacteristicFormula E.classificationStatementClosed))

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse