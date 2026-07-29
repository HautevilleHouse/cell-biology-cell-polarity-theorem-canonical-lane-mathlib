import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CytoskeletonRearrangementPackage where
  cellType : Type u
  actinFilamentsReorganized : Prop
  microtubuleNetworkOriented : Prop
  centrosomeRepositioned : Prop
  corticalTensionGenerated : Prop
  polarityAxisEstablished : Prop

structure CytoskeletonRearrangementEvidence (C : CytoskeletonRearrangementPackage) where
  actinFilamentsReorganizedClosed : C.actinFilamentsReorganized
  microtubuleNetworkOrientedClosed : C.microtubuleNetworkOriented
  centrosomeRepositionedClosed : C.centrosomeRepositioned
  corticalTensionGeneratedClosed : C.corticalTensionGenerated
  polarityAxisEstablishedClosed : C.polarityAxisEstablished

def CytoskeletonRearrangementClosed (C : CytoskeletonRearrangementPackage) : Prop :=
  C.actinFilamentsReorganized ∧ C.microtubuleNetworkOriented ∧
  C.centrosomeRepositioned ∧ C.corticalTensionGenerated ∧
  C.polarityAxisEstablished

theorem cytoskeleton_rearrangement_closed_from_evidence
    (C : CytoskeletonRearrangementPackage)
    (E : CytoskeletonRearrangementEvidence C) :
    CytoskeletonRearrangementClosed C := by
  exact And.intro E.actinFilamentsReorganizedClosed
    (And.intro E.microtubuleNetworkOrientedClosed
      (And.intro E.centrosomeRepositionedClosed
        (And.intro E.corticalTensionGeneratedClosed
          E.polarityAxisEstablishedClosed)))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse