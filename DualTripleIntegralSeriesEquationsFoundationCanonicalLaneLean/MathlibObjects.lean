import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.AdmissibleClass
import canonicalLaneMathlibCore
import Mathlib.Analysis.SpecialFunctions.Trigonometric

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualTripleIntegralEquation where
  kernel : ℕ × ℕ × ℕ → ℝ
  unknown : ℕ → ℝ
  rightHandSide : ℕ × ℕ × ℕ → ℝ
  equationCondition : Prop

structure AdmittedObject where
  equation : DualTripleIntegralEquation
  solution : ℕ → ℝ
  satisfiesEquation : Prop
  uniqueness : Prop
  conclusion : satisfiesEquation

structure EndgameState where
  object : AdmittedObject

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.satisfiesEquation

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse