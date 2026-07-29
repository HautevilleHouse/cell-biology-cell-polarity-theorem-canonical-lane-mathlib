import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellCellJunctionSignalingPackage where
  cellType : Type u
  adherensJunctionsFormed : Prop
  tightJunctionsSealed : Prop
  desmosomesAssembled : Prop
  polarityComplexRecruitedAtJunctions : Prop
  signalingCascadeActivated : Prop
  tissuePolarityPropagated : Prop

structure CellCellJunctionSignalingEvidence
    (J : CellCellJunctionSignalingPackage) where
  adherensJunctionsFormedClosed : J.adherensJunctionsFormed
  tightJunctionsSealedClosed : J.tightJunctionsSealed
  desmosomesAssembledClosed : J.desmosomesAssembled
  polarityComplexRecruitedAtJunctionsClosed : J.polarityComplexRecruitedAtJunctions
  signalingCascadeActivatedClosed : J.signalingCascadeActivated
  tissuePolarityPropagatedClosed : J.tissuePolarityPropagated

def CellCellJunctionSignalingClosed
    (J : CellCellJunctionSignalingPackage) : Prop :=
  J.adherensJunctionsFormed ∧ J.tightJunctionsSealed ∧
  J.desmosomesAssembled ∧ J.polarityComplexRecruitedAtJunctions ∧
  J.signalingCascadeActivated ∧ J.tissuePolarityPropagated

theorem cell_cell_junction_signaling_closed_from_evidence
    (J : CellCellJunctionSignalingPackage)
    (E : CellCellJunctionSignalingEvidence J) :
    CellCellJunctionSignalingClosed J := by
  exact And.intro E.adherensJunctionsFormedClosed
    (And.intro E.tightJunctionsSealedClosed
      (And.intro E.desmosomesAssembledClosed
        (And.intro E.polarityComplexRecruitedAtJunctionsClosed
          (And.intro E.signalingCascadeActivatedClosed
            E.tissuePolarityPropagatedClosed))))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse