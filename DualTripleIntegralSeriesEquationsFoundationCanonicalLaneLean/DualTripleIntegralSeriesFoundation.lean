import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure DualTripleIntegralSeriesFoundation where
  kernelFamily : Type u
  integralOperator : Type v
  dualSeriesRepresentation : Prop
  tripleSeriesExpansion : Prop
  integralEquationFormulation : Prop
  solutionExistence : Prop
  uniqueness : Prop

structure DualTripleIntegralSeriesFoundationEvidence (F : DualTripleIntegralSeriesFoundation) where
  dualSeriesRepresentationClosed : F.dualSeriesRepresentation
  tripleSeriesExpansionClosed : F.tripleSeriesExpansion
  integralEquationFormulationClosed : F.integralEquationFormulation
  solutionExistenceClosed : F.solutionExistence
  uniquenessClosed : F.uniqueness

def DualTripleIntegralSeriesFoundationClosed (F : DualTripleIntegralSeriesFoundation) : Prop :=
  F.dualSeriesRepresentation ∧ F.tripleSeriesExpansion ∧
  F.integralEquationFormulation ∧ F.solutionExistence ∧ F.uniqueness

theorem dual_triple_integral_series_foundation_closed_from_evidence
    (F : DualTripleIntegralSeriesFoundation) (E : DualTripleIntegralSeriesFoundationEvidence F) :
    DualTripleIntegralSeriesFoundationClosed F := by
  exact And.intro E.dualSeriesRepresentationClosed
    (And.intro E.tripleSeriesExpansionClosed
      (And.intro E.integralEquationFormulationClosed
        (And.intro E.solutionExistenceClosed E.uniquenessClosed)))

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse
