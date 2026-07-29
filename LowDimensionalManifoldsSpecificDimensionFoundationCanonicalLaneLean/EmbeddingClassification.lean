import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure EmbeddingClassificationPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  dimensionTwo : Prop
  surfaceClassification : Prop
  embeddingConstraintsSatisfied : Prop

structure EmbeddingClassificationEvidence (E : EmbeddingClassificationPackage) where
  dimensionTwoClosed : E.dimensionTwo
  surfaceClassificationClosed : E.surfaceClassification
  embeddingConstraintsSatisfiedClosed : E.embeddingConstraintsSatisfied

def EmbeddingClassificationClosed (E : EmbeddingClassificationPackage) : Prop :=
  E.dimensionTwo ∧ E.surfaceClassification ∧ E.embeddingConstraintsSatisfied

theorem embedding_classification_closed_from_evidence (E : EmbeddingClassificationPackage) (Ev : EmbeddingClassificationEvidence E) :
    EmbeddingClassificationClosed E := by
  exact And.intro Ev.dimensionTwoClosed (And.intro Ev.surfaceClassificationClosed Ev.embeddingConstraintsSatisfiedClosed)

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse