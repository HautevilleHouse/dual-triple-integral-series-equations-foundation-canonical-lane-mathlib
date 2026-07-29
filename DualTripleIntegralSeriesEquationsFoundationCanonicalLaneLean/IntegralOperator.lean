import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure IntegralOperator where
  kernelType : String
  domainDimension : Nat
  regularity : Prop

structure IntegralOperatorEvidence (Op : IntegralOperator) where
  kernelTypeClosed : Op.kernelType = "Fredholm"
  domainDimensionClosed : Op.domainDimension = 3
  regularityClosed : Op.regularity

def IntegralOperatorClosed (Op : IntegralOperator) : Prop :=
  Op.kernelType = "Fredholm" ∧ Op.domainDimension = 3 ∧ Op.regularity

theorem integral_operator_closed_from_evidence (Op : IntegralOperator) (E : IntegralOperatorEvidence Op) : IntegralOperatorClosed Op := by
  exact And.intro E.kernelTypeClosed (And.intro E.domainDimensionClosed E.regularityClosed)

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
