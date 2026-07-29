import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure AsymmetricDistributionPackage {C : PolarityProteinComplex} (P : PolarityProteinComplex) where
  parDomainLocalization : Prop
  anteriorCorticalTargeting : Prop
  posteriorExclusionMechanism : Prop
  membraneCytoplasmicCycling : Prop
  parDomainLocalizationTerm : parDomainLocalization
  anteriorCorticalTargetingTerm : anteriorCorticalTargeting
  posteriorExclusionMechanismTerm : posteriorExclusionMechanism
  membraneCytoplasmicCyclingTerm : membraneCytoplasmicCycling

structure AsymmetricDistributionEvidence {C : PolarityProteinComplex} (A : AsymmetricDistributionPackage C) where
  parDomainLocalizationClosed : A.parDomainLocalization
  anteriorCorticalTargetingClosed : A.anteriorCorticalTargeting
  posteriorExclusionMechanismClosed : A.posteriorExclusionMechanism
  membraneCytoplasmicCyclingClosed : A.membraneCytoplasmicCycling

def AsymmetricDistributionClosed {C : PolarityProteinComplex} (A : AsymmetricDistributionPackage C) : Prop :=
  A.parDomainLocalization ∧ A.anteriorCorticalTargeting ∧ A.posteriorExclusionMechanism ∧ A.membraneCytoplasmicCycling

theorem asymmetric_distribution_closed_from_evidence {C : PolarityProteinComplex}
    (A : AsymmetricDistributionPackage C) (E : AsymmetricDistributionEvidence A) :
    AsymmetricDistributionClosed A := by
  exact And.intro E.parDomainLocalizationClosed
    (And.intro E.anteriorCorticalTargetingClosed
      (And.intro E.posteriorExclusionMechanismClosed E.membraneCytoplasmicCyclingClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse