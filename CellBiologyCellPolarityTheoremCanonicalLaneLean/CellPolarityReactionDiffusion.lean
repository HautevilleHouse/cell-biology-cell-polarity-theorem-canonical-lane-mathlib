import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityTheoremCanonicalLaneLean.CellPolarityPrimitives

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellPolarityPDEPackage (P : CellPolarityPrimitivePackage) where
  reactionDiffusionEquations : Prop
  boundaryConditions : Prop
  patternFormation : Prop
  timeSteadyState : Prop

structure CellPolarityPDEEvidence {P : CellPolarityPrimitivePackage} (F : CellPolarityPDEPackage P) where
  reactionDiffusionEquationsClosed : F.reactionDiffusionEquations
  boundaryConditionsClosed : F.boundaryConditions
  patternFormationClosed : F.patternFormation
  timeSteadyStateClosed : F.timeSteadyState

def CellPolarityPDEClosed {P : CellPolarityPrimitivePackage} (F : CellPolarityPDEPackage P) : Prop :=
  F.reactionDiffusionEquations ∧ F.boundaryConditions ∧ F.patternFormation ∧ F.timeSteadyState

theorem cell_polarity_pde_closed_from_evidence {P : CellPolarityPrimitivePackage}
    (F : CellPolarityPDEPackage P) (E : CellPolarityPDEEvidence F) : CellPolarityPDEClosed F := by
  exact And.intro E.reactionDiffusionEquationsClosed
    (And.intro E.boundaryConditionsClosed
      (And.intro E.patternFormationClosed E.timeSteadyStateClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse