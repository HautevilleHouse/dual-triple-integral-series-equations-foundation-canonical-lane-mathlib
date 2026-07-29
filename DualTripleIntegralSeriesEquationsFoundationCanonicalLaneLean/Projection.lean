import HautevilleHouse.DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedObject where
  space : Type
  topology : TopologicalSpace space
  integralEquationResolved : Prop
  seriesConvergence : Prop
  conclusion : integralEquationResolved ∧ seriesConvergence

def AdmittedObjectClosed (O : AdmittedObject) : Prop :=
  O.conclusion

structure EndgameState where
  object : AdmittedObject

def dualTripleProjection : Projection EndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem projection_idempotent (x : EndgameState) :
    dualTripleProjection.toFun (dualTripleProjection.toFun x) = dualTripleProjection.toFun x := by
  exact dualTripleProjection.idempotent x

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse