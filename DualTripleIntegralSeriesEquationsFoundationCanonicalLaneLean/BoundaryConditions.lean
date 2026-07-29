import canonicalLaneMathlib.AdmissibleClass
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.IntegralOperator
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.KernelExpansion
import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.CompatibilityConditions

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure BoundaryConditions (Op : IntegralOperator) (K : KernelExpansion Op) (C : CompatibilityConditions Op K) where
  dirichletType : Prop
  neumannType : Prop
  mixedConsistency : Prop

structure BoundaryConditionsEvidence {Op : IntegralOperator} {K : KernelExpansion Op} {C : CompatibilityConditions Op K} (B : BoundaryConditions Op K C) where
  dirichletTypeClosed : B.dirichletType
  neumannTypeClosed : B.neumannType
  mixedConsistencyClosed : B.mixedConsistency

def BoundaryConditionsClosed {Op : IntegralOperator} {K : KernelExpansion Op} {C : CompatibilityConditions Op K} (B : BoundaryConditions Op K C) : Prop :=
  B.dirichletType ∧ B.neumannType ∧ B.mixedConsistency

theorem boundary_conditions_closed_from_evidence {Op : IntegralOperator} {K : KernelExpansion Op} {C : CompatibilityConditions Op K} (B : BoundaryConditions Op K C) (E : BoundaryConditionsEvidence B) : BoundaryConditionsClosed B := by
  exact And.intro E.dirichletTypeClosed (And.intro E.neumannTypeClosed E.mixedConsistencyClosed)

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
