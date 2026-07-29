import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolarityMaintenancePackage {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    {F : FeedbackRegulationPackage A} {K : CytoskeletonCouplingPackage} where
  cellDivisionOrientation : Prop
  asymmetricCellDivision : Prop
  stemCellNichePolarity : Prop
  longTermPersistence : Prop
  cellDivisionOrientationTerm : cellDivisionOrientation
  asymmetricCellDivisionTerm : asymmetricCellDivision
  stemCellNichePolarityTerm : stemCellNichePolarity
  longTermPersistenceTerm : longTermPersistence

structure PolarityMaintenanceEvidence {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    {F : FeedbackRegulationPackage A} {K : CytoskeletonCouplingPackage}
    (M : PolarityMaintenancePackage) where
  cellDivisionOrientationClosed : M.cellDivisionOrientation
  asymmetricCellDivisionClosed : M.asymmetricCellDivision
  stemCellNichePolarityClosed : M.stemCellNichePolarity
  longTermPersistenceClosed : M.longTermPersistence

def PolarityMaintenanceClosed {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    {F : FeedbackRegulationPackage A} {K : CytoskeletonCouplingPackage}
    (M : PolarityMaintenancePackage) : Prop :=
  M.cellDivisionOrientation ∧ M.asymmetricCellDivision ∧ M.stemCellNichePolarity ∧ M.longTermPersistence

theorem polarity_maintenance_closed_from_evidence {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    {F : FeedbackRegulationPackage A} {K : CytoskeletonCouplingPackage}
    (M : PolarityMaintenancePackage) (E : PolarityMaintenanceEvidence M) :
    PolarityMaintenanceClosed M := by
  exact And.intro E.cellDivisionOrientationClosed
    (And.intro E.asymmetricCellDivisionClosed
      (And.intro E.stemCellNichePolarityClosed E.longTermPersistenceClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse