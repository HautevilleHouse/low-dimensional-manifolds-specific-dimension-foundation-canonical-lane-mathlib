import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure ThreeManifoldPrimeDecompositionPackage where
  manifoldType: Type u
  topology: TopologicalSpace manifoldType
  closed: Prop
  orientable: Prop
  primeComponents: List (Type u)
  decompositionExists: Prop
  uniqueness: Prop

structure ThreeManifoldPrimeDecompositionEvidence (T: ThreeManifoldPrimeDecompositionPackage) where
  closedClosed: T.closed
  orientableClosed: T.orientable
  decompositionExistsClosed: T.decompositionExists
  uniquenessClosed: T.uniqueness

def ThreeManifoldPrimeDecompositionClosed (T: ThreeManifoldPrimeDecompositionPackage): Prop :=
  T.closed ∧ T.orientable ∧ T.decompositionExists ∧ T.uniqueness

theorem three_manifold_prime_decomposition_closed_from_evidence (T: ThreeManifoldPrimeDecompositionPackage) (E: ThreeManifoldPrimeDecompositionEvidence T):
  ThreeManifoldPrimeDecompositionClosed T := by
  exact And.intro E.closedClosed (And.intro E.orientableClosed (And.intro E.decompositionExistsClosed E.uniquenessClosed))

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse