import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure MembranePolarityPackage where
  cellMembrane : Type u
  plasmaMembrane : Type v
  apicalSurface : Prop
  basolateralSurface : Prop
  tightJunctionFormed : Prop
  polarityProteinRecruited : Prop
  membraneAsymmetryEstablished : Prop

structure MembranePolarityEvidence (M : MembranePolarityPackage) where
  apicalSurfaceClosed : M.apicalSurface
  basolateralSurfaceClosed : M.basolateralSurface
  tightJunctionFormedClosed : M.tightJunctionFormed
  polarityProteinRecruitedClosed : M.polarityProteinRecruited
  membraneAsymmetryEstablishedClosed : M.membraneAsymmetryEstablished

def MembranePolarityClosed (M : MembranePolarityPackage) : Prop :=
  M.apicalSurface ∧ M.basolateralSurface ∧ M.tightJunctionFormed ∧
  M.polarityProteinRecruited ∧ M.membraneAsymmetryEstablished

theorem membrane_polarity_closed_from_evidence (M : MembranePolarityPackage)
    (E : MembranePolarityEvidence M) : MembranePolarityClosed M := by
  exact And.intro E.apicalSurfaceClosed
    (And.intro E.basolateralSurfaceClosed
      (And.intro E.tightJunctionFormedClosed
        (And.intro E.polarityProteinRecruitedClosed
          E.membraneAsymmetryEstablishedClosed)))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse