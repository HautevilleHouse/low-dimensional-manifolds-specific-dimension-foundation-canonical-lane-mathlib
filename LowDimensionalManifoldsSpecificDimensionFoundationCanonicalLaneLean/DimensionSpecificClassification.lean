import LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean.LowDimensionalManifoldsAdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure ClassificationEvidence where
  dimTwoClosedSurfaceGenus : Prop
  dimTwoUniformizationExists : Prop
  dimThreePrimeDecompositionExists : Prop
  dimThreeGeometrizationHolds : Prop
  dimFourExoticStructuresExist : Prop
  dimGtFourHCobordismTheoremHolds : Prop

structure DimensionPackage (A : AdmissibleClass) where
  evidence : ClassificationEvidence
  classificationClosed : Prop

def dimensionPackageClosed (pkg : DimensionPackage) : Prop :=
  pkg.evidence.dimTwoClosedSurfaceGenus ∧
  pkg.evidence.dimTwoUniformizationExists ∧
  pkg.evidence.dimThreePrimeDecompositionExists ∧
  pkg.evidence.dimThreeGeometrizationHolds ∧
  pkg.evidence.dimFourExoticStructuresExist ∧
  pkg.evidence.dimGtFourHCobordismTheoremHolds

theorem dimension_package_closed_from_evidence (pkg : DimensionPackage) :
    dimensionPackageClosed pkg := by
  exact And.intro pkg.evidence.dimTwoClosedSurfaceGenus
    (And.intro pkg.evidence.dimTwoUniformizationExists
      (And.intro pkg.evidence.dimThreePrimeDecompositionExists
        (And.intro pkg.evidence.dimThreeGeometrizationHolds
          (And.intro pkg.evidence.dimFourExoticStructuresExist
            pkg.evidence.dimGtFourHCobordismTheoremHolds))))

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse