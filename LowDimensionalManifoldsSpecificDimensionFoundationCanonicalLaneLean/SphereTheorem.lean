import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure SphereTheoremPackage where
  manifoldType: Type u
  topology: TopologicalSpace manifoldType
  simplyConnected: Prop
  closed: Prop
  homeomorphicToSphere: Prop

structure SphereTheoremEvidence (S: SphereTheoremPackage) where
  simplyConnectedClosed: S.simplyConnected
  closedClosed: S.closed
  homeomorphicToSphereClosed: S.homeomorphicToSphere

def SphereTheoremClosed (S: SphereTheoremPackage): Prop :=
  S.simplyConnected ∧ S.closed ∧ S.homeomorphicToSphere

theorem sphere_theorem_closed_from_evidence (S: SphereTheoremPackage) (E: SphereTheoremEvidence S):
  SphereTheoremClosed S := by
  exact And.intro E.simplyConnectedClosed (And.intro E.closedClosed E.homeomorphicToSphereClosed)

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse