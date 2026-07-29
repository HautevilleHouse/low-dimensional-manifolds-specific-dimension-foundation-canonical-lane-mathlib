import canonicalLaneMathlib.AdmissibleClass
import LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean.LowDimClassification

/-!
# Low-Dimensional Geometrization Package
-/

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure GeometrizationPackage {B : BettiNumbersPackage} {C : ClassificationPackage B} where
  geometricStructures : Prop
  seifertFiberedCase : Prop
  hyperbolicCase : Prop
  sphericalCase : Prop
  torusBundleCase : Prop

structure GeometrizationEvidence {B : BettiNumbersPackage} {C : ClassificationPackage B} (G : GeometrizationPackage C) where
  geometricStructuresClosed : G.geometricStructures
  seifertFiberedCaseClosed : G.seifertFiberedCase
  hyperbolicCaseClosed : G.hyperbolicCase
  sphericalCaseClosed : G.sphericalCase
  torusBundleCaseClosed : G.torusBundleCase

def GeometrizationClosed {B : BettiNumbersPackage} {C : ClassificationPackage B} (G : GeometrizationPackage C) : Prop :=
  G.geometricStructures ∧ G.seifertFiberedCase ∧ G.hyperbolicCase ∧ G.sphericalCase ∧ G.torusBundleCase

theorem geometrization_closed_from_evidence {B : BettiNumbersPackage} {C : ClassificationPackage B} (G : GeometrizationPackage C) (E : GeometrizationEvidence G) : GeometrizationClosed G := by
  exact And.intro E.geometricStructuresClosed (And.intro E.seifertFiberedCaseClosed (And.intro E.hyperbolicCaseClosed (And.intro E.sphericalCaseClosed E.torusBundleCaseClosed)))

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse
