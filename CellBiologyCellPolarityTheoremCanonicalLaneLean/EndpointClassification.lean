import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellPolarityEndpointClassificationPackage where
  cellType : Type u
  polarityAxisDefined : Prop
  apicalBasalPolarityEstablished : Prop
  frontRearPolarityEstablished : Prop
  cellDivisionOriented : Prop
  cellMigrationGuided : Prop
  tissueOrganizationMaintained : Prop

structure CellPolarityEndpointClassificationEvidence
    (C : CellPolarityEndpointClassificationPackage) where
  polarityAxisDefinedClosed : C.polarityAxisDefined
  apicalBasalPolarityEstablishedClosed : C.apicalBasalPolarityEstablished
  frontRearPolarityEstablishedClosed : C.frontRearPolarityEstablished
  cellDivisionOrientedClosed : C.cellDivisionOriented
  cellMigrationGuidedClosed : C.cellMigrationGuided
  tissueOrganizationMaintainedClosed : C.tissueOrganizationMaintained

def CellPolarityEndpointClassificationClosed
    (C : CellPolarityEndpointClassificationPackage) : Prop :=
  C.polarityAxisDefined ∧ C.apicalBasalPolarityEstablished ∧
  C.frontRearPolarityEstablished ∧ C.cellDivisionOriented ∧
  C.cellMigrationGuided ∧ C.tissueOrganizationMaintained

theorem cell_polarity_endpoint_classification_closed_from_evidence
    (C : CellPolarityEndpointClassificationPackage)
    (E : CellPolarityEndpointClassificationEvidence C) :
    CellPolarityEndpointClassificationClosed C := by
  exact And.intro E.polarityAxisDefinedClosed
    (And.intro E.apicalBasalPolarityEstablishedClosed
      (And.intro E.frontRearPolarityEstablishedClosed
        (And.intro E.cellDivisionOrientedClosed
          (And.intro E.cellMigrationGuidedClosed
            E.tissueOrganizationMaintainedClosed))))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse