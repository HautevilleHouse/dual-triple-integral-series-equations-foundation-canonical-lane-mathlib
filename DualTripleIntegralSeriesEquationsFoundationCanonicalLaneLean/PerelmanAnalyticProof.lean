import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.ReductionSystem

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure KernelRegularityCertificate (K : DualTripleIntegralKernel) where
  boundedness : Prop
  integrability : Prop
  decay : Prop
  boundednessClosed : boundedness
  integrabilityClosed : integrability
  decayClosed : decay
  regularityEvidence : KernelRegularityEvidence K

def KernelRegularityCertificateClosed (K : DualTripleIntegralKernel)
    (C : KernelRegularityCertificate K) : Prop :=
  C.boundedness ∧ C.integrability ∧ C.decay ∧ KernelRegularityClosed K

theorem kernel_regularity_certificate_closed
    (K : DualTripleIntegralKernel) (C : KernelRegularityCertificate K) :
    KernelRegularityCertificateClosed K C := by
  exact And.intro C.boundednessClosed
    (And.intro C.integrabilityClosed
      (And.intro C.decayClosed (kernel_regularity_closed_from_evidence K C.regularityEvidence)))

structure FredholmIndexCertificate {K : DualTripleIntegralKernel} (F : FredholmPackage K) where
  indexWellDefined : Prop
  fredholmAlternative : Prop
  spectralProperties : Prop
  indexWellDefinedClosed : indexWellDefined
  fredholmAlternativeClosed : fredholmAlternative
  spectralPropertiesClosed : spectralProperties
  fredholmEvidence : FredholmPackageEvidence F

def FredholmIndexCertificateClosed {K : DualTripleIntegralKernel} {F : FredholmPackage K}
    (C : FredholmIndexCertificate F) : Prop :=
  C.indexWellDefined ∧ C.fredholmAlternative ∧ C.spectralProperties ∧ FredholmPackageClosed F

theorem fredholm_index_certificate_closed
    {K : DualTripleIntegralKernel} {F : FredholmPackage K}
    (C : FredholmIndexCertificate F) : FredholmIndexCertificateClosed C := by
  exact And.intro C.indexWellDefinedClosed
    (And.intro C.fredholmAlternativeClosed
      (And.intro C.spectralPropertiesClosed (fredholm_package_closed_from_evidence F C.fredholmEvidence)))

structure ReductionSystemCertificate {K : DualTripleIntegralKernel} {F : FredholmPackage K}
    (R : ReductionSystemPackage F) where
  reductionMap : Prop
  kernelStructurePreserved : Prop
  solutionEquivalence : Prop
  reductionMapClosed : reductionMap
  kernelStructurePreservedClosed : kernelStructurePreserved
  solutionEquivalenceClosed : solutionEquivalence
  reductionEvidence : ReductionSystemEvidence R

def ReductionSystemCertificateClosed {K : DualTripleIntegralKernel} {F : FredholmPackage K}
    {R : ReductionSystemPackage F} (C : ReductionSystemCertificate R) : Prop :=
  C.reductionMap ∧ C.kernelStructurePreserved ∧ C.solutionEquivalence ∧ ReductionSystemClosed R

theorem reduction_system_certificate_closed
    {K : DualTripleIntegralKernel} {F : FredholmPackage K} {R : ReductionSystemPackage F}
    (C : ReductionSystemCertificate R) : ReductionSystemCertificateClosed C := by
  exact And.intro C.reductionMapClosed
    (And.intro C.kernelStructurePreservedClosed
      (And.intro C.solutionEquivalenceClosed (reduction_system_closed_from_evidence R C.reductionEvidence)))

structure AsymptoticAnalysisCertificate {K : DualTripleIntegralKernel} {F : FredholmPackage K}
    {R : ReductionSystemPackage F} (A : AsymptoticAnalysisPackage R) where
  asymptoticExpansion : Prop
  leadingOrder : Prop
  errorBounds : Prop
  asymptoticExpansionClosed : asymptoticExpansion
  leadingOrderClosed : leadingOrder
  errorBoundsClosed : errorBounds
  asymptoticEvidence : AsymptoticAnalysisEvidence A

def AsymptoticAnalysisCertificateClosed {K : DualTripleIntegralKernel} {F : FredholmPackage K}
    {R : ReductionSystemPackage F} {A : AsymptoticAnalysisPackage R} (C : AsymptoticAnalysisCertificate A) : Prop :=
  C.asymptoticExpansion ∧ C.leadingOrder ∧ C.errorBounds ∧ AsymptoticAnalysisClosed A

theorem asymptotic_analysis_certificate_closed
    {K : DualTripleIntegralKernel} {F : FredholmPackage K} {R : ReductionSystemPackage F}
    {A : AsymptoticAnalysisPackage R} (C : AsymptoticAnalysisCertificate A) : AsymptoticAnalysisCertificateClosed C := by
  exact And.intro C.asymptoticExpansionClosed
    (And.intro C.leadingOrderClosed
      (And.intro C.errorBoundsClosed (asymptotic_analysis_closed_from_evidence A C.asymptoticEvidence)))

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse