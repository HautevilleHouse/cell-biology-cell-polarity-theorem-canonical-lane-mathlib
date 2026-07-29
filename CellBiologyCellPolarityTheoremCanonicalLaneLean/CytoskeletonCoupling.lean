import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CytoskeletonCouplingPackage {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    {F : FeedbackRegulationPackage A} where
  actinNucleationAtPole : Prop
  microtubulePolarization : Prop
  forceGenerationForShapeChange : Prop
  corticalFlowsCoupling : Prop
  actinNucleationAtPoleTerm : actinNucleationAtPole
  microtubulePolarizationTerm : microtubulePolarization
  forceGenerationForShapeChangeTerm : forceGenerationForShapeChange
  corticalFlowsCouplingTerm : corticalFlowsCoupling

structure CytoskeletonCouplingEvidence {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    {F : FeedbackRegulationPackage A} (K : CytoskeletonCouplingPackage) where
  actinNucleationAtPoleClosed : K.actinNucleationAtPole
  microtubulePolarizationClosed : K.microtubulePolarization
  forceGenerationForShapeChangeClosed : K.forceGenerationForShapeChange
  corticalFlowsCouplingClosed : K.corticalFlowsCoupling

def CytoskeletonCouplingClosed {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    {F : FeedbackRegulationPackage A} (K : CytoskeletonCouplingPackage) : Prop :=
  K.actinNucleationAtPole ∧ K.microtubulePolarization ∧ K.forceGenerationForShapeChange ∧ K.corticalFlowsCoupling

theorem cytoskeleton_coupling_closed_from_evidence {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    {F : FeedbackRegulationPackage A} (K : CytoskeletonCouplingPackage) (E : CytoskeletonCouplingEvidence K) :
    CytoskeletonCouplingClosed K := by
  exact And.intro E.actinNucleationAtPoleClosed
    (And.intro E.microtubulePolarizationClosed
      (And.intro E.forceGenerationForShapeChangeClosed E.corticalFlowsCouplingClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse