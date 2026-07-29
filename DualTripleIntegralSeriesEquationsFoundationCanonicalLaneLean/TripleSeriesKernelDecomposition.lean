import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.DualTripleIntegralSeriesFoundation

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure TripleSeriesKernelDecompositionPackage (F : DualTripleIntegralSeriesFoundation) where
  kernelSplit : Prop
  seriesConvergence : Prop
  termwiseIntegrability : Prop
  interchangeValidity : Prop

structure TripleSeriesKernelDecompositionEvidence {F : DualTripleIntegralSeriesFoundation}
    (K : TripleSeriesKernelDecompositionPackage F) where
  kernelSplitClosed : K.kernelSplit
  seriesConvergenceClosed : K.seriesConvergence
  termwiseIntegrabilityClosed : K.termwiseIntegrability
  interchangeValidityClosed : K.interchangeValidity

def TripleSeriesKernelDecompositionClosed {F : DualTripleIntegralSeriesFoundation}
    (K : TripleSeriesKernelDecompositionPackage F) : Prop :=
  K.kernelSplit ∧ K.seriesConvergence ∧ K.termwiseIntegrability ∧ K.interchangeValidity

theorem triple_series_kernel_decomposition_closed_from_evidence
    {F : DualTripleIntegralSeriesFoundation} (K : TripleSeriesKernelDecompositionPackage F)
    (E : TripleSeriesKernelDecompositionEvidence K) : TripleSeriesKernelDecompositionClosed K := by
  exact And.intro E.kernelSplitClosed
    (And.intro E.seriesConvergenceClosed
      (And.intro E.termwiseIntegrabilityClosed E.interchangeValidityClosed))

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
