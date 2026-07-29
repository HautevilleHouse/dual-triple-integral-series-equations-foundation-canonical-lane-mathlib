import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure IntegralOperatorKernelPackage where
  kernelType : Type u
  continuityCondition : Prop
  boundednessCondition : Prop
  symmetryCondition : Prop

def IntegralOperatorKernelClosed (K : IntegralOperatorKernelPackage) : Prop :=
  K.continuityCondition ∧ K.boundednessCondition ∧ K.symmetryCondition

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse