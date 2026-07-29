import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure LowDimSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LowDimAdmittedObject where
  space : LowDimSpace
  closedManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure LowDimEndgameState where
  object : LowDimAdmittedObject

def LowDimWitnessClosed (O : LowDimAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse