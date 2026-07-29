import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure StructurePackage where
  surfaceClassification : Prop
  threeManifoldPrimeDecomposition : Prop
  geometrizationConjecture : Prop
  surfaceClassificationClosed : surfaceClassification
  threeManifoldPrimeDecompositionClosed : threeManifoldPrimeDecomposition
  geometrizationConjectureClosed : geometrizationConjecture

structure StructureEvidence (S : StructurePackage) where
  surfaceClassificationClosed : S.surfaceClassification
  threeManifoldPrimeDecompositionClosed : S.threeManifoldPrimeDecomposition
  geometrizationConjectureClosed : S.geometrizationConjecture

def StructureClosed (S : StructurePackage) : Prop :=
  S.surfaceClassification ∧ S.threeManifoldPrimeDecomposition ∧ S.geometrizationConjecture

theorem structure_closed_from_evidence (S : StructurePackage)
    (E : StructureEvidence S) : StructureClosed S := by
  exact And.intro E.surfaceClassificationClosed
    (And.intro E.threeManifoldPrimeDecompositionClosed E.geometrizationConjectureClosed)

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse