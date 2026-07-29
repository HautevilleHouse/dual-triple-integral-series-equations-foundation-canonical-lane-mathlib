import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.TripleSeriesReduction

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure DualIntegralEquationPackage {K : IntegralPairingKernel}
    {R : TripleSeriesReductionPackage K} where
  integralEquationForm : Prop
  principalPartExtracted : Prop
  regularityOfSolution : Prop
  uniquenessCondition : Prop

structure DualIntegralEquationEvidence {K : IntegralPairingKernel}
    {R : TripleSeriesReductionPackage K}
    (D : DualIntegralEquationPackage R) where
  integralEquationFormClosed : D.integralEquationForm
  principalPartExtractedClosed : D.principalPartExtracted
  regularityOfSolutionClosed : D.regularityOfSolution
  uniquenessConditionClosed : D.uniquenessCondition

def DualIntegralEquationClosed {K : IntegralPairingKernel}
    {R : TripleSeriesReductionPackage K}
    (D : DualIntegralEquationPackage R) : Prop :=
  D.integralEquationForm ∧ D.principalPartExtracted ∧
  D.regularityOfSolution ∧ D.uniquenessCondition

theorem dual_integral_equation_closed_from_evidence
    {K : IntegralPairingKernel} {R : TripleSeriesReductionPackage K}
    (D : DualIntegralEquationPackage R)
    (E : DualIntegralEquationEvidence D) : DualIntegralEquationClosed D := by
  exact And.intro E.integralEquationFormClosed
    (And.intro E.principalPartExtractedClosed
      (And.intro E.regularityOfSolutionClosed E.uniquenessConditionClosed))

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse