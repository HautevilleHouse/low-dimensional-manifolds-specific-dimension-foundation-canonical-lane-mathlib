import LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean.LowDimensionalManifoldsAdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LowDimensionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse