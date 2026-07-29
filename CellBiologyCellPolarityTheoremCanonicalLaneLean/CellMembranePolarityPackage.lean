import CellBiologyCellPolarityTheoremCanonicalLaneLean.CellPolarityAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellMembranePolarityPackage where
  lipidAsymmetry : Prop
  proteinLocalization : Prop
  cytoskeletonRearrangement : Prop
  signalAmplification : Prop
  symmetryBreakingMechanism : Prop

structure CellMembranePolarityEvidence (P : CellMembranePolarityPackage) where
  lipidAsymmetryClosed : P.lipidAsymmetry
  proteinLocalizationClosed : P.proteinLocalization
  cytoskeletonRearrangementClosed : P.cytoskeletonRearrangement
  signalAmplificationClosed : P.signalAmplification
  symmetryBreakingMechanismClosed : P.symmetryBreakingMechanism

def CellMembranePolarityClosed (P : CellMembranePolarityPackage) : Prop :=
  P.lipidAsymmetry ∧ P.proteinLocalization ∧ P.cytoskeletonRearrangement ∧ P.signalAmplification ∧ P.symmetryBreakingMechanism

theorem cell_membrane_polarity_closed_from_evidence (P : CellMembranePolarityPackage) (E : CellMembranePolarityEvidence P) :
    CellMembranePolarityClosed P := by
  exact And.intro E.lipidAsymmetryClosed (And.intro E.proteinLocalizationClosed (And.intro E.cytoskeletonRearrangementClosed (And.intro E.signalAmplificationClosed E.symmetryBreakingMechanismClosed)))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse