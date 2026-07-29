import canonicalLaneMathlib.AdmissibleClass
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.IntegralOperator
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.KernelExpansion
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.CompatibilityConditions

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure SolutionSpace (Op : IntegralOperator) (K : KernelExpansion Op) (C : CompatibilityConditions Op K) where
  functionSpace : Type u
  uniqueness : Prop
  existenceUnderConditions : Prop

structure SolutionSpaceEvidence {Op : IntegralOperator} {K : KernelExpansion Op} {C : CompatibilityConditions Op K} (S : SolutionSpace Op K C) where
  functionSpaceClosed : True
  uniquenessClosed : S.uniqueness
  existenceUnderConditionsClosed : S.existenceUnderConditions

def SolutionSpaceClosed {Op : IntegralOperator} {K : KernelExpansion Op} {C : CompatibilityConditions Op K} (S : SolutionSpace Op K C) : Prop :=
  S.uniqueness ∧ S.existenceUnderConditions

theorem solution_space_closed_from_evidence {Op : IntegralOperator} {K : KernelExpansion Op} {C : CompatibilityConditions Op K} (S : SolutionSpace Op K C) (E : SolutionSpaceEvidence S) : SolutionSpaceClosed S := by
  exact And.intro E.uniquenessClosed E.existenceUnderConditionsClosed

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
