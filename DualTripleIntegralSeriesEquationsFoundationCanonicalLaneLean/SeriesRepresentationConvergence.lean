import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure SeriesRepresentationConvergencePackage where
  seriesType : Type u
  convergenceCondition : Prop
  termwiseContinuity : Prop
  uniformConvergence : Prop

def SeriesRepresentationConvergenceClosed (S : SeriesRepresentationConvergencePackage) : Prop :=
  S.convergenceCondition ∧ S.termwiseContinuity ∧ S.uniformConvergence

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse