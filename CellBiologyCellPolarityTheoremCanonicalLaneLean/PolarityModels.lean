import CellBiologyCellPolarityTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolarityModel where
  symmetryBreaking : Prop
  patternFormation : Prop
  scaleCompatibility : Prop
  persistenceUnderPerturbation : Prop

structure PolarityModelEvidence (M : PolarityModel) where
  symmetryBreakingClosed : M.symmetryBreaking
  patternFormationClosed : M.patternFormation
  scaleCompatibilityClosed : M.scaleCompatibility
  persistenceUnderPerturbationClosed : M.persistenceUnderPerturbation

def PolarityModelClosed (M : PolarityModel) : Prop :=
  M.symmetryBreaking ∧ M.patternFormation ∧ M.scaleCompatibility ∧ M.persistenceUnderPerturbation

theorem polarity_model_closed_from_evidence (M : PolarityModel) (E : PolarityModelEvidence M) : PolarityModelClosed M := by
  exact And.intro E.symmetryBreakingClosed (And.intro E.patternFormationClosed (And.intro E.scaleCompatibilityClosed E.persistenceUnderPerturbationClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse