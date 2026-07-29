import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.TripleSeriesKernelDecomposition

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure DualIntegralEquivalencePackage {F : DualTripleIntegralSeriesFoundation}
    (K : TripleSeriesKernelDecompositionPackage F) where
  dualFormEquivalent : Prop
  integralTransformInvertible : Prop
  mappingClosedForm : Prop
  coefficientRecurrence : Prop

structure DualIntegralEquivalenceEvidence {F : DualTripleIntegralSeriesFoundation}
    {K : TripleSeriesKernelDecompositionPackage F}
    (D : DualIntegralEquivalencePackage K) where
  dualFormEquivalentClosed : D.dualFormEquivalent
  integralTransformInvertibleClosed : D.integralTransformInvertible
  mappingClosedFormClosed : D.mappingClosedForm
  coefficientRecurrenceClosed : D.coefficientRecurrence

def DualIntegralEquivalenceClosed {F : DualTripleIntegralSeriesFoundation}
    {K : TripleSeriesKernelDecompositionPackage F}
    (D : DualIntegralEquivalencePackage K) : Prop :=
  D.dualFormEquivalent ∧ D.integralTransformInvertible ∧
  D.mappingClosedForm ∧ D.coefficientRecurrence

theorem dual_integral_equivalence_closed_from_evidence
    {F : DualTripleIntegralSeriesFoundation} {K : TripleSeriesKernelDecompositionPackage F}
    (D : DualIntegralEquivalencePackage K) (E : DualIntegralEquivalenceEvidence D) :
    DualIntegralEquivalenceClosed D := by
  exact And.intro E.dualFormEquivalentClosed
    (And.intro E.integralTransformInvertibleClosed
      (And.intro E.mappingClosedFormClosed E.coefficientRecurrenceClosed))

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
