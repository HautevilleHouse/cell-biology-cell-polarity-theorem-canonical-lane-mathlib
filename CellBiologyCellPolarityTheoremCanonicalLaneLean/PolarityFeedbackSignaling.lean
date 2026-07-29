import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolarityFeedbackSignalingPackage where
  positiveFeedbackLoop : Prop
  negativeFeedbackRegulation : Prop
  signalAmplificationThreshold : Prop
  adaptationToPerturbation : Prop
  robustness : Prop

structure PolarityFeedbackSignalingEvidence (F : PolarityFeedbackSignalingPackage) where
  positiveFeedbackLoopClosed : F.positiveFeedbackLoop
  negativeFeedbackRegulationClosed : F.negativeFeedbackRegulation
  signalAmplificationThresholdClosed : F.signalAmplificationThreshold
  adaptationToPerturbationClosed : F.adaptationToPerturbation
  robustnessClosed : F.robustness

def PolarityFeedbackSignalingClosed (F : PolarityFeedbackSignalingPackage) : Prop :=
  F.positiveFeedbackLoop ∧ F.negativeFeedbackRegulation ∧ F.signalAmplificationThreshold ∧
  F.adaptationToPerturbation ∧ F.robustness

theorem polarity_feedback_signaling_closed_from_evidence
    (F : PolarityFeedbackSignalingPackage) (E : PolarityFeedbackSignalingEvidence F) :
    PolarityFeedbackSignalingClosed F := by
  exact And.intro E.positiveFeedbackLoopClosed
    (And.intro E.negativeFeedbackRegulationClosed
      (And.intro E.signalAmplificationThresholdClosed
        (And.intro E.adaptationToPerturbationClosed E.robustnessClosed)))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse