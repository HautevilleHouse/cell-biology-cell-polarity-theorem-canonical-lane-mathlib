import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PARPartitioningPackage where
  cellType : Type u
  par3Par6Complex : Prop
  aPKCRecruited : Prop
  parComplexLocalizedAnterior : Prop
  parComplexLocalizedPosterior : Prop
  asymmetryEstablished : Prop
  cellPolarityDriven : Prop

structure PARPartitioningEvidence (P : PARPartitioningPackage) where
  par3Par6ComplexClosed : P.par3Par6Complex
  aPKCRecruitedClosed : P.aPKCRecruited
  parComplexLocalizedAnteriorClosed : P.parComplexLocalizedAnterior
  parComplexLocalizedPosteriorClosed : P.parComplexLocalizedPosterior
  asymmetryEstablishedClosed : P.asymmetryEstablished
  cellPolarityDrivenClosed : P.cellPolarityDriven

def PARPartitioningClosed (P : PARPartitioningPackage) : Prop :=
  P.par3Par6Complex ∧ P.aPKCRecruited ∧ P.parComplexLocalizedAnterior ∧
  P.parComplexLocalizedPosterior ∧ P.asymmetryEstablished ∧ P.cellPolarityDriven

theorem par_partitioning_closed_from_evidence (P : PARPartitioningPackage)
    (E : PARPartitioningEvidence P) : PARPartitioningClosed P := by
  exact And.intro E.par3Par6ComplexClosed
    (And.intro E.aPKCRecruitedClosed
      (And.intro E.parComplexLocalizedAnteriorClosed
        (And.intro E.parComplexLocalizedPosteriorClosed
          (And.intro E.asymmetryEstablishedClosed
            E.cellPolarityDrivenClosed))))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse