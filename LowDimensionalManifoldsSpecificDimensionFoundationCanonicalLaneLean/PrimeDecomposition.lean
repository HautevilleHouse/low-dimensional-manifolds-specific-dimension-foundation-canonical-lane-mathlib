import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean

structure PrimeDecompositionPackage where
  primeSummandsClassified : Prop
  uniquenessOfPrimes : Prop
  torusDecomposition : Prop

structure PrimeDecompositionEvidence (P : PrimeDecompositionPackage) where
  primeSummandsClassifiedClosed : P.primeSummandsClassified
  uniquenessOfPrimesClosed : P.uniquenessOfPrimes
  torusDecompositionClosed : P.torusDecomposition

def PrimeDecompositionClosed (P : PrimeDecompositionPackage) : Prop :=
  P.primeSummandsClassified ∧ P.uniquenessOfPrimes ∧ P.torusDecomposition

theorem prime_decomposition_closed_from_evidence (P : PrimeDecompositionPackage) (Ev : PrimeDecompositionEvidence P) :
    PrimeDecompositionClosed P := by
  exact And.intro Ev.primeSummandsClassifiedClosed (And.intro Ev.uniquenessOfPrimesClosed Ev.torusDecompositionClosed)

end LowDimensionalManifoldsSpecificDimensionFoundationCanonicalLaneLean
end HautevilleHouse