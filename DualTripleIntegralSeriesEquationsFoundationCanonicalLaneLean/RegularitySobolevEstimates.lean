import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.SpectrumAsymptotics

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure RegularitySobolevEstimatesPackage {F : DualTripleIntegralSeriesFoundation}
    {K : TripleSeriesKernelDecompositionPackage F}
    {D : DualIntegralEquivalencePackage K}
    (S : SpectrumAsymptoticsPackage D) where
  sobolevNormBound : Prop
  regularityLadder : Prop
  coercivityEstimate : Prop
  compactEmbedding : Prop

structure RegularitySobolevEstimatesEvidence {F : DualTripleIntegralSeriesFoundation}
    {K : TripleSeriesKernelDecompositionPackage F}
    {D : DualIntegralEquivalencePackage K}
    {S : SpectrumAsymptoticsPackage D}
    (R : RegularitySobolevEstimatesPackage S) where
  sobolevNormBoundClosed : R.sobolevNormBound
  regularityLadderClosed : R.regularityLadder
  coercivityEstimateClosed : R.coercivityEstimate
  compactEmbeddingClosed : R.compactEmbedding

def RegularitySobolevEstimatesClosed {F : DualTripleIntegralSeriesFoundation}
    {K : TripleSeriesKernelDecompositionPackage F}
    {D : DualIntegralEquivalencePackage K}
    {S : SpectrumAsymptoticsPackage D}
    (R : RegularitySobolevEstimatesPackage S) : Prop :=
  R.sobolevNormBound ∧ R.regularityLadder ∧ R.coercivityEstimate ∧ R.compactEmbedding

theorem regularity_sobolev_estimates_closed_from_evidence
    {F : DualTripleIntegralSeriesFoundation} {K : TripleSeriesKernelDecompositionPackage F}
    {D : DualIntegralEquivalencePackage K} {S : SpectrumAsymptoticsPackage D}
    (R : RegularitySobolevEstimatesPackage S) (E : RegularitySobolevEstimatesEvidence R) :
    RegularitySobolevEstimatesClosed R := by
  exact And.intro E.sobolevNormBoundClosed
    (And.intro E.regularityLadderClosed
      (And.intro E.coercivityEstimateClosed E.compactEmbeddingClosed))

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
