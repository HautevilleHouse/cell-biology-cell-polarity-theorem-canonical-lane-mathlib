import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolarityCueSignalingPackage where
  cueSignal : Type
  receptorBinding : Prop
  downstreamKinase : Prop
  parComplexRecruitment : Prop
  inhibitionOfDiffusion : Prop
  persistenceUnderPerturbation : Prop

structure PolarityCueSignalingEvidence (C : PolarityCueSignalingPackage) where
  receptorBindingClosed : C.receptorBinding
  downstreamKinaseClosed : C.downstreamKinase
  parComplexRecruitmentClosed : C.parComplexRecruitment
  inhibitionOfDiffusionClosed : C.inhibitionOfDiffusion
  persistenceUnderPerturbationClosed : C.persistenceUnderPerturbation

def PolarityCueSignalingClosed (C : PolarityCueSignalingPackage) : Prop :=
  C.receptorBinding ∧ C.downstreamKinase ∧ C.parComplexRecruitment ∧
  C.inhibitionOfDiffusion ∧ C.persistenceUnderPerturbation

theorem polarity_cue_signaling_closed_from_evidence (C : PolarityCueSignalingPackage)
    (E : PolarityCueSignalingEvidence C) : PolarityCueSignalingClosed C := by
  exact And.intro E.receptorBindingClosed
    (And.intro E.downstreamKinaseClosed
      (And.intro E.parComplexRecruitmentClosed
        (And.intro E.inhibitionOfDiffusionClosed E.persistenceUnderPerturbationClosed)))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse