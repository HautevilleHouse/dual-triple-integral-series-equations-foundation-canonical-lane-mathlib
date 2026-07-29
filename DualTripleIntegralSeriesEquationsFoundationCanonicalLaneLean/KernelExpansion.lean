import canonicalLaneMathlib.AdmissibleClass
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.IntegralOperator

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure KernelExpansion (Op : IntegralOperator) where
  expansionBasis : Type u
  coefficientsConvergent : Prop
  uniformConvergence : Prop

structure KernelExpansionEvidence {Op : IntegralOperator} (K : KernelExpansion Op) where
  expansionBasisClosed : True
  coefficientsConvergentClosed : K.coefficientsConvergent
  uniformConvergenceClosed : K.uniformConvergence

def KernelExpansionClosed {Op : IntegralOperator} (K : KernelExpansion Op) : Prop :=
  K.coefficientsConvergent ∧ K.uniformConvergence

theorem kernel_expansion_closed_from_evidence {Op : IntegralOperator} (K : KernelExpansion Op) (E : KernelExpansionEvidence K) : KernelExpansionClosed K := by
  exact And.intro E.coefficientsConvergentClosed E.uniformConvergenceClosed

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
