import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure TripleIntegralEquationPackage where
  equationForm : Type u
  kernelCondition : Prop
  boundaryCondition : Prop
  solvabilityCondition : Prop

def TripleIntegralEquationClosed (E : TripleIntegralEquationPackage) : Prop :=
  E.kernelCondition ∧ E.boundaryCondition ∧ E.solvabilityCondition

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse