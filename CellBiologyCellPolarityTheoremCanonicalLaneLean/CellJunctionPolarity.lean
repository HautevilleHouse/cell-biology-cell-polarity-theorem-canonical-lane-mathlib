import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellJunctionPolarityPackage where
  tightJunctionFormation : Prop
  adherensJunctionLocalization : Prop
  desmosomeAssembly : Prop
  gapJunctionDistribution : Prop
  polarityDependentJunctionRemodeling : Prop

structure CellJunctionPolarityEvidence (J : CellJunctionPolarityPackage) where
  tightJunctionFormationClosed : J.tightJunctionFormation
  adherensJunctionLocalizationClosed : J.adherensJunctionLocalization
  desmosomeAssemblyClosed : J.desmosomeAssembly
  gapJunctionDistributionClosed : J.gapJunctionDistribution
  polarityDependentJunctionRemodelingClosed : J.polarityDependentJunctionRemodeling

def CellJunctionPolarityClosed (J : CellJunctionPolarityPackage) : Prop :=
  J.tightJunctionFormation ∧ J.adherensJunctionLocalization ∧
  J.desmosomeAssembly ∧ J.gapJunctionDistribution ∧ J.polarityDependentJunctionRemodeling

theorem cell_junction_polarity_closed_from_evidence (J : CellJunctionPolarityPackage)
    (E : CellJunctionPolarityEvidence J) : CellJunctionPolarityClosed J := by
  exact And.intro E.tightJunctionFormationClosed
    (And.intro E.adherensJunctionLocalizationClosed
      (And.intro E.desmosomeAssemblyClosed
        (And.intro E.gapJunctionDistributionClosed E.polarityDependentJunctionRemodelingClosed)))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse