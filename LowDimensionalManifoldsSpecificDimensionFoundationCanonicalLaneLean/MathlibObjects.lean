import canonicalLaneMathlib.MathlibObjects
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure LowDimSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LowDimAdmittedObject where
  space : LowDimSpace
  dimensionTwoOrThree : Prop
  closedAndOrientable : Prop
  conclusion : dimensionTwoOrThree ∧ closedAndOrientable

structure LowDimEndgameState where
  object : LowDimAdmittedObject

def LowDimWitnessClosed (O : LowDimAdmittedObject) : Prop :=
  O.dimensionTwoOrThree ∧ O.closedAndOrientable

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse