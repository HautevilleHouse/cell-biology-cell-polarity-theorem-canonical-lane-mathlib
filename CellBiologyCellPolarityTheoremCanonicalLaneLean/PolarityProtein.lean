import CellBiologyCellPolarityTheoremCanonicalLaneLean.SignalingPathway

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolarityProteinPackage where
  proteinLocalization : Prop
  proteinTrafficking : Prop
  proteinStability : Prop
  proteinActivity : Prop

structure PolarityProteinEvidence (P : PolarityProteinPackage) where
  proteinLocalizationClosed : P.proteinLocalization
  proteinTraffickingClosed : P.proteinTrafficking
  proteinStabilityClosed : P.proteinStability
  proteinActivityClosed : P.proteinActivity

def PolarityProteinClosed (P : PolarityProteinPackage) : Prop :=
  P.proteinLocalization ∧ P.proteinTrafficking ∧ P.proteinStability ∧ P.proteinActivity

theorem polarity_protein_closed_from_evidence (P : PolarityProteinPackage) (E : PolarityProteinEvidence P) : PolarityProteinClosed P := by
  exact And.intro E.proteinLocalizationClosed (And.intro E.proteinTraffickingClosed (And.intro E.proteinStabilityClosed E.proteinActivityClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse