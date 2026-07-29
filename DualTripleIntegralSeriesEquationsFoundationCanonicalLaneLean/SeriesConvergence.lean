import canonicalLaneMathlib.AdmissibleClass
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.IntegralOperator
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.KernelExpansion

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure SeriesConvergence (Op : IntegralOperator) (K : KernelExpansion Op) where
  absoluteConvergence : Prop
  uniformConvergenceOnCompact : Prop
  termwiseIntegrable : Prop

structure SeriesConvergenceEvidence {Op : IntegralOperator} {K : KernelExpansion Op} (S : SeriesConvergence Op K) where
  absoluteConvergenceClosed : S.absoluteConvergence
  uniformConvergenceOnCompactClosed : S.uniformConvergenceOnCompact
  termwiseIntegrableClosed : S.termwiseIntegrable

def SeriesConvergenceClosed {Op : IntegralOperator} {K : KernelExpansion Op} (S : SeriesConvergence Op K) : Prop :=
  S.absoluteConvergence ∧ S.uniformConvergenceOnCompact ∧ S.termwiseIntegrable

theorem series_convergence_closed_from_evidence {Op : IntegralOperator} {K : KernelExpansion Op} (S : SeriesConvergence Op K) (E : SeriesConvergenceEvidence S) : SeriesConvergenceClosed S := by
  exact And.intro E.absoluteConvergenceClosed (And.intro E.uniformConvergenceOnCompactClosed E.termwiseIntegrableClosed)

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
