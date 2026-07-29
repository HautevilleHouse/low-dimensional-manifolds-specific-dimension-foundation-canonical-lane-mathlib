import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure LowDimAdmittedObject where
  manifold : Type
  dimension : Nat
  isClosed : Prop
  isOrientable : Prop
  classificationHypothesis : Prop

structure AdmissibleClass where
  object : LowDimAdmittedClass
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse