import CellBiologyCellPolarityTheoremCanonicalLaneLean.CytoskeletonDynamics

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure FeedbackLoopPackage where
  positiveFeedback : Prop
  negativeFeedback : Prop
  mutualInhibition : Prop
  signalAmplification : Prop

structure FeedbackLoopEvidence (F : FeedbackLoopPackage) where
  positiveFeedbackClosed : F.positiveFeedback
  negativeFeedbackClosed : F.negativeFeedback
  mutualInhibitionClosed : F.mutualInhibition
  signalAmplificationClosed : F.signalAmplification

def FeedbackLoopClosed (F : FeedbackLoopPackage) : Prop :=
  F.positiveFeedback ∧ F.negativeFeedback ∧ F.mutualInhibition ∧ F.signalAmplification

theorem feedback_loop_closed_from_evidence (F : FeedbackLoopPackage) (E : FeedbackLoopEvidence F) : FeedbackLoopClosed F := by
  exact And.intro E.positiveFeedbackClosed (And.intro E.negativeFeedbackClosed (And.intro E.mutualInhibitionClosed E.signalAmplificationClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse