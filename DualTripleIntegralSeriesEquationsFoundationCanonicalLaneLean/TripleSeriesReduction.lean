import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.IntegralPairingStructure

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure TripleSeriesReductionPackage {K : IntegralPairingKernel} where
  unknownFunctions : Type
  tripleSeriesPresentation : Prop
  reductionToDoubleIntegral : Prop
  leadingOrderExtracted : Prop
  remainderBounds : Prop

structure TripleSeriesReductionEvidence {K : IntegralPairingKernel}
    (R : TripleSeriesReductionPackage K) where
  tripleSeriesPresentationClosed : R.tripleSeriesPresentation
  reductionToDoubleIntegralClosed : R.reductionToDoubleIntegral
  leadingOrderExtractedClosed : R.leadingOrderExtracted
  remainderBoundsClosed : R.remainderBounds

def TripleSeriesReductionClosed {K : IntegralPairingKernel}
    (R : TripleSeriesReductionPackage K) : Prop :=
  R.tripleSeriesPresentation ∧ R.reductionToDoubleIntegral ∧
  R.leadingOrderExtracted ∧ R.remainderBounds

theorem triple_series_reduction_closed_from_evidence
    {K : IntegralPairingKernel} (R : TripleSeriesReductionPackage K)
    (E : TripleSeriesReductionEvidence R) : TripleSeriesReductionClosed R := by
  exact And.intro E.tripleSeriesPresentationClosed
    (And.intro E.reductionToDoubleIntegralClosed
      (And.intro E.leadingOrderExtractedClosed E.remainderBoundsClosed))

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse