import DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean

structure KernelRegularityEvidenceTerms {K : DualTripleIntegralKernel}
    (C : KernelRegularityCertificate K) where
  boundednessClosed : C.boundedness
  integrabilityClosed : C.integrability
  decayClosed : C.decay
  regularityClosed : KernelRegularityClosed K

def KernelRegularityCertificate.evidenceTerms {K : DualTripleIntegralKernel}
    (C : KernelRegularityCertificate K) : KernelRegularityEvidenceTerms C :=
  {
    boundednessClosed := C.boundednessClosed
    integrabilityClosed := C.integrabilityClosed
    decayClosed := C.decayClosed
    regularityClosed := kernel_regularity_closed_from_evidence K C.regularityEvidence
  }

structure FredholmIndexEvidenceTerms {K : DualTripleIntegralKernel}
    {F : FredholmPackage K} (C : FredholmIndexCertificate F) where
  indexWellDefinedClosed : C.indexWellDefined
  fredholmAlternativeClosed : C.fredholmAlternative
  spectralPropertiesClosed : C.spectralProperties
  fredholmClosed : FredholmPackageClosed F

def FredholmIndexCertificate.evidenceTerms {K : DualTripleIntegralKernel}
    {F : FredholmPackage K} (C : FredholmIndexCertificate F) : FredholmIndexEvidenceTerms C :=
  {
    indexWellDefinedClosed := C.indexWellDefinedClosed
    fredholmAlternativeClosed := C.fredholmAlternativeClosed
    spectralPropertiesClosed := C.spectralPropertiesClosed
    fredholmClosed := fredholm_package_closed_from_evidence F C.fredholmEvidence
  }

structure ReductionSystemEvidenceTerms {K : DualTripleIntegralKernel}
    {F : FredholmPackage K} {R : ReductionSystemPackage F}
    (C : ReductionSystemCertificate R) where
  reductionMapClosed : C.reductionMap
  kernelStructurePreservedClosed : C.kernelStructurePreserved
  solutionEquivalenceClosed : C.solutionEquivalence
  reductionClosed : ReductionSystemClosed R

def ReductionSystemCertificate.evidenceTerms {K : DualTripleIntegralKernel}
    {F : FredholmPackage K} {R : ReductionSystemPackage F}
    (C : ReductionSystemCertificate R) : ReductionSystemEvidenceTerms C :=
  {
    reductionMapClosed := C.reductionMapClosed
    kernelStructurePreservedClosed := C.kernelStructurePreservedClosed
    solutionEquivalenceClosed := C.solutionEquivalenceClosed
    reductionClosed := reduction_system_closed_from_evidence R C.reductionEvidence
  }

structure AsymptoticAnalysisEvidenceTerms {K : DualTripleIntegralKernel}
    {F : FredholmPackage K} {R : ReductionSystemPackage F}
    {A : AsymptoticAnalysisPackage R} (C : AsymptoticAnalysisCertificate A) where
  asymptoticExpansionClosed : C.asymptoticExpansion
  leadingOrderClosed : C.leadingOrder
  errorBoundsClosed : C.errorBounds
  asymptoticClosed : AsymptoticAnalysisClosed A

def AsymptoticAnalysisCertificate.evidenceTerms {K : DualTripleIntegralKernel}
    {F : FredholmPackage K} {R : ReductionSystemPackage F}
    {A : AsymptoticAnalysisPackage R} (C : AsymptoticAnalysisCertificate A) : AsymptoticAnalysisEvidenceTerms C :=
  {
    asymptoticExpansionClosed := C.asymptoticExpansionClosed
    leadingOrderClosed := C.leadingOrderClosed
    errorBoundsClosed := C.errorBoundsClosed
    asymptoticClosed := asymptotic_analysis_closed_from_evidence A C.asymptoticEvidence
  }

end DualTripleIntegralSeriesEquationsFoundationCanonicalLaneLean
end HautevilleHouse