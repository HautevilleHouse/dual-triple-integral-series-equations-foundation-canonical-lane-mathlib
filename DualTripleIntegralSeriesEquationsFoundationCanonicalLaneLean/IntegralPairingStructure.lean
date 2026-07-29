import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure IntegralPairingKernel where
  pairType : Type
  kernelFunction : pairType → ℝ
  integrabilityCondition : Prop
  kernelSymmetric : Prop
  finiteDoubleIntegral : Prop

structure IntegralPairingKernelEvidence (K : IntegralPairingKernel) where
  integrabilityConditionClosed : K.integrabilityCondition
  kernelSymmetricClosed : K.kernelSymmetric
  finiteDoubleIntegralClosed : K.finiteDoubleIntegral

def IntegralPairingKernelClosed (K : IntegralPairingKernel) : Prop :=
  K.integrabilityCondition ∧ K.kernelSymmetric ∧ K.finiteDoubleIntegral

theorem integral_pairing_kernel_closed_from_evidence (K : IntegralPairingKernel)
    (E : IntegralPairingKernelEvidence K) : IntegralPairingKernelClosed K := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.kernelSymmetricClosed E.finiteDoubleIntegralClosed)

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse