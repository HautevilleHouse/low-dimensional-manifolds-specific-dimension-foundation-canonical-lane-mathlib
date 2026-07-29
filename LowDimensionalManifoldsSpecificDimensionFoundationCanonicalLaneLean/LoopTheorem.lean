import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure LoopTheoremPackage where
  manifoldType: Type u
  topology: TopologicalSpace manifoldType
  boundary: Type u
  boundaryTopology: TopologicalSpace boundary
  loopExists: Prop
  properEssentialDisk: Prop
  theoremStatement: Prop

structure LoopTheoremEvidence (L: LoopTheoremPackage) where
  loopExistsClosed: L.loopExists
  properEssentialDiskClosed: L.properEssentialDisk
  theoremStatementClosed: L.theoremStatement

def LoopTheoremClosed (L: LoopTheoremPackage): Prop :=
  L.loopExists ∧ L.properEssentialDisk ∧ L.theoremStatement

theorem loop_theorem_closed_from_evidence (L: LoopTheoremPackage) (E: LoopTheoremEvidence L):
  LoopTheoremClosed L := by
  exact And.intro E.loopExistsClosed (And.intro E.properEssentialDiskClosed E.theoremStatementClosed)

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse