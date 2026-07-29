import HautevilleHouse.DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse