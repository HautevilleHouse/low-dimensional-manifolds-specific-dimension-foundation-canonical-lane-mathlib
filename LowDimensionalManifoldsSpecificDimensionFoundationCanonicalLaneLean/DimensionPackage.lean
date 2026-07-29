import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure DimensionPackage where
  manifoldType: Type u
  topology: TopologicalSpace manifoldType
  dimension: ℕ
  dimensionIsThree: dimension = 3
  closed: Prop
  connected: Prop
  orientable: Prop

structure DimensionEvidence (D: DimensionPackage) where
  dimensionIsThreeClosed: D.dimensionIsThree
  closedClosed: D.closed
  connectedClosed: D.connected
  orientableClosed: D.orientable

def DimensionClosed (D: DimensionPackage): Prop :=
  D.dimensionIsThree ∧ D.closed ∧ D.connected ∧ D.orientable

theorem dimension_closed_from_evidence (D: DimensionPackage) (E: DimensionEvidence D):
  DimensionClosed D := by
  exact And.intro E.dimensionIsThreeClosed (And.intro E.closedClosed (And.intro E.connectedClosed E.orientableClosed))

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse