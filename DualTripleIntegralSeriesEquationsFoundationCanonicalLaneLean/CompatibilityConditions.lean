import canonicalLaneMathlib.AdmissibleClass
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.IntegralOperator
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.KernelExpansion

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure CompatibilityConditions (Op : IntegralOperator) (K : KernelExpansion Op) where
  equationPairConsistent : Prop
  seriesInterchangeValid : Prop
  boundaryMatching : Prop

structure CompatibilityConditionsEvidence {Op : IntegralOperator} {K : KernelExpansion Op} (C : CompatibilityConditions Op K) where
  equationPairConsistentClosed : C.equationPairConsistent
  seriesInterchangeValidClosed : C.seriesInterchangeValid
  boundaryMatchingClosed : C.boundaryMatching

def CompatibilityConditionsClosed {Op : IntegralOperator} {K : KernelExpansion Op} (C : CompatibilityConditions Op K) : Prop :=
  C.equationPairConsistent ∧ C.seriesInterchangeValid ∧ C.boundaryMatching

theorem compatibility_conditions_closed_from_evidence {Op : IntegralOperator} {K : KernelExpansion Op} (C : CompatibilityConditions Op K) (E : CompatibilityConditionsEvidence C) : CompatibilityConditionsClosed C := by
  exact And.intro E.equationPairConsistentClosed (And.intro E.seriesInterchangeValidClosed E.boundaryMatchingClosed)

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
