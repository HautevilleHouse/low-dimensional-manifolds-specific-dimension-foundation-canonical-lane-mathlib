import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure GeometrizationConjecturePackage where
  manifoldType: Type u
  topology: TopologicalSpace manifoldType
  closed: Prop
  orientable: Prop
  geometricPieces: List (Type u)
  geometrizationStatement: Prop

structure GeometrizationConjectureEvidence (G: GeometrizationConjecturePackage) where
  closedClosed: G.closed
  orientableClosed: G.orientable
  geometricPiecesDefined: G.geometricPieces.length > 0
  geometrizationStatementClosed: G.geometrizationStatement

def GeometrizationConjectureClosed (G: GeometrizationConjecturePackage): Prop :=
  G.closed ∧ G.orientable ∧ G.geometricPieces.length > 0 ∧ G.geometrizationStatement

theorem geometrization_conjecture_closed_from_evidence (G: GeometrizationConjecturePackage) (E: GeometrizationConjectureEvidence G):
  GeometrizationConjectureClosed G := by
  exact And.intro E.closedClosed (And.intro E.orientableClosed (And.intro E.geometricPiecesDefined E.geometrizationStatementClosed))

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse