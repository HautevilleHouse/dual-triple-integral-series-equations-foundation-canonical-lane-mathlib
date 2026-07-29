import HautevilleHouse.DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.KernelStructure

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure TripleSeriesEquationPackage (K : KernelStructure) where
  seriesSummation : Type u
  coefficientRelation : Prop
  convergenceCondition : Prop
  solutionExistence : Prop

structure TripleSeriesEquationEvidence (K : KernelStructure) (P : TripleSeriesEquationPackage K) where
  coefficientRelationClosed : P.coefficientRelation
  convergenceConditionClosed : P.convergenceCondition
  solutionExistenceClosed : P.solutionExistence

def TripleSeriesEquationClosed (K : KernelStructure) (P : TripleSeriesEquationPackage K) : Prop :=
  P.coefficientRelation ∧ P.convergenceCondition ∧ P.solutionExistence

theorem triple_series_equation_closed_from_evidence (K : KernelStructure) (P : TripleSeriesEquationPackage K)
    (E : TripleSeriesEquationEvidence K P) : TripleSeriesEquationClosed K P := by
  exact And.intro E.coefficientRelationClosed (And.intro E.convergenceConditionClosed E.solutionExistenceClosed)

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse