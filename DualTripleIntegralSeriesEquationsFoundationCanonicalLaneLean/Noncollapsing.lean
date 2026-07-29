import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.FredholmTheory

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure NoncollapsingPackage {K : DualTripleIntegralKernel} (F : FredholmPackage K) where
  compactnessCondition : Prop
  approximationProperty : Prop
  stabilityUnderPerturbation : Prop

structure NoncollapsingEvidence {K : DualTripleIntegralKernel} {F : FredholmPackage K}
    (N : NoncollapsingPackage F) where
  compactnessConditionClosed : N.compactnessCondition
  approximationPropertyClosed : N.approximationProperty
  stabilityUnderPerturbationClosed : N.stabilityUnderPerturbation

def NoncollapsingClosed {K : DualTripleIntegralKernel} {F : FredholmPackage K}
    (N : NoncollapsingPackage F) : Prop :=
  N.compactnessCondition ∧ N.approximationProperty ∧ N.stabilityUnderPerturbation

theorem noncollapsing_closed_from_evidence
    {K : DualTripleIntegralKernel} {F : FredholmPackage K}
    (N : NoncollapsingPackage F) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.compactnessConditionClosed
    (And.intro E.approximationPropertyClosed E.stabilityUnderPerturbationClosed)

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse