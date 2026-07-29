import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure ParComplexAssemblyPackage where
  par3Par6Recruitment : Prop
  apkcCdc42Activation : Prop
  parComplexMembraneLocalization : Prop
  positiveFeedbackLoop : Prop
  symmetryBreaking : Prop

structure ParComplexAssemblyEvidence (P : ParComplexAssemblyPackage) where
  par3Par6RecruitmentClosed : P.par3Par6Recruitment
  apkcCdc42ActivationClosed : P.apkcCdc42Activation
  parComplexMembraneLocalizationClosed : P.parComplexMembraneLocalization
  positiveFeedbackLoopClosed : P.positiveFeedbackLoop
  symmetryBreakingClosed : P.symmetryBreaking

def ParComplexAssemblyClosed (P : ParComplexAssemblyPackage) : Prop :=
  P.par3Par6Recruitment ∧ P.apkcCdc42Activation ∧
  P.parComplexMembraneLocalization ∧ P.positiveFeedbackLoop ∧ P.symmetryBreaking

theorem par_complex_assembly_closed_from_evidence (P : ParComplexAssemblyPackage)
    (E : ParComplexAssemblyEvidence P) : ParComplexAssemblyClosed P := by
  exact And.intro E.par3Par6RecruitmentClosed
    (And.intro E.apkcCdc42ActivationClosed
      (And.intro E.parComplexMembraneLocalizationClosed
        (And.intro E.positiveFeedbackLoopClosed E.symmetryBreakingClosed)))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse