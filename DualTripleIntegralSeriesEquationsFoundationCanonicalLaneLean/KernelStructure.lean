import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure KernelStructure where
  kernelFunction : Type u
  domain : Type v
  integrabilityCondition : Prop
  symmetryProperty : Prop
  decayCondition : Prop

structure KernelStructureEvidence (K : KernelStructure) where
  integrabilityConditionClosed : K.integrabilityCondition
  symmetryPropertyClosed : K.symmetryProperty
  decayConditionClosed : K.decayCondition

def KernelStructureClosed (K : KernelStructure) : Prop :=
  K.integrabilityCondition ∧ K.symmetryProperty ∧ K.decayCondition

theorem kernel_structure_closed_from_evidence (K : KernelStructure) (E : KernelStructureEvidence K) : KernelStructureClosed K := by
  exact And.intro E.integrabilityConditionClosed (And.intro E.symmetryPropertyClosed E.decayConditionClosed)

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse