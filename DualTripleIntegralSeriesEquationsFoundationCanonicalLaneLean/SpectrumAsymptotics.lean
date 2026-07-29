import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.DualIntegralEquivalence

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure SpectrumAsymptoticsPackage {F : DualTripleIntegralSeriesFoundation}
    {K : TripleSeriesKernelDecompositionPackage F}
    (D : DualIntegralEquivalencePackage K) where
  eigenvalueAsymptotics : Prop
  eigenfunctionExpansion : Prop
  spectralGapBound : Prop
  resolventEstimate : Prop

structure SpectrumAsymptoticsEvidence {F : DualTripleIntegralSeriesFoundation}
    {K : TripleSeriesKernelDecompositionPackage F}
    {D : DualIntegralEquivalencePackage K}
    (S : SpectrumAsymptoticsPackage D) where
  eigenvalueAsymptoticsClosed : S.eigenvalueAsymptotics
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion
  spectralGapBoundClosed : S.spectralGapBound
  resolventEstimateClosed : S.resolventEstimate

def SpectrumAsymptoticsClosed {F : DualTripleIntegralSeriesFoundation}
    {K : TripleSeriesKernelDecompositionPackage F}
    {D : DualIntegralEquivalencePackage K}
    (S : SpectrumAsymptoticsPackage D) : Prop :=
  S.eigenvalueAsymptotics ∧ S.eigenfunctionExpansion ∧
  S.spectralGapBound ∧ S.resolventEstimate

theorem spectrum_asymptotics_closed_from_evidence
    {F : DualTripleIntegralSeriesFoundation} {K : TripleSeriesKernelDecompositionPackage F}
    {D : DualIntegralEquivalencePackage K} (S : SpectrumAsymptoticsPackage D)
    (E : SpectrumAsymptoticsEvidence S) : SpectrumAsymptoticsClosed S := by
  exact And.intro E.eigenvalueAsymptoticsClosed
    (And.intro E.eigenfunctionExpansionClosed
      (And.intro E.spectralGapBoundClosed E.resolventEstimateClosed))

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
