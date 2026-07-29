import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure DualSeriesTransformationPackage where
  originalSeries : Type u
  transformedSeries : Type v
  transformationLaw : Prop
  invertibilityCondition : Prop

def DualSeriesTransformationClosed (T : DualSeriesTransformationPackage) : Prop :=
  T.transformationLaw ∧ T.invertibilityCondition

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse