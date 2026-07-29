import CellBiologyCellPolarityTheoremCanonicalLaneLean.PolarityFeedbackPackage

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellDivisionPolarityPackage {P : CellMembranePolarityPackage} {F : PolarityFeedbackPackage P} where
  mitoticSpindleOrientation : Prop
  asymmetricCellDivision : Prop
  daughterCellFate : Prop
  polarityInheritance : Prop

structure CellDivisionPolarityEvidence {P : CellMembranePolarityPackage} {F : PolarityFeedbackPackage P} (D : CellDivisionPolarityPackage P F) where
  mitoticSpindleOrientationClosed : D.mitoticSpindleOrientation
  asymmetricCellDivisionClosed : D.asymmetricCellDivision
  daughterCellFateClosed : D.daughterCellFate
  polarityInheritanceClosed : D.polarityInheritance

def CellDivisionPolarityClosed {P : CellMembranePolarityPackage} {F : PolarityFeedbackPackage P} (D : CellDivisionPolarityPackage P F) : Prop :=
  D.mitoticSpindleOrientation ∧ D.asymmetricCellDivision ∧ D.daughterCellFate ∧ D.polarityInheritance

theorem cell_division_polarity_closed_from_evidence {P : CellMembranePolarityPackage} {F : PolarityFeedbackPackage P} (D : CellDivisionPolarityPackage P F) (E : CellDivisionPolarityEvidence D) :
    CellDivisionPolarityClosed D := by
  exact And.intro E.mitoticSpindleOrientationClosed (And.intro E.asymmetricCellDivisionClosed (And.intro E.daughterCellFateClosed E.polarityInheritanceClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse