import CellBiologyCellPolarityTheoremCanonicalLaneLean.CellMembranePolarityPackage

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolarityFeedbackPackage {P : CellMembranePolarityPackage} where
  positiveFeedbackLoop : Prop
  selfReinforcingGradient : Prop
  robustnessToNoise : Prop
  cellSizeScaling : Prop

structure PolarityFeedbackEvidence {P : CellMembranePolarityPackage} (F : PolarityFeedbackPackage P) where
  positiveFeedbackLoopClosed : F.positiveFeedbackLoop
  selfReinforcingGradientClosed : F.selfReinforcingGradient
  robustnessToNoiseClosed : F.robustnessToNoise
  cellSizeScalingClosed : F.cellSizeScaling

def PolarityFeedbackClosed {P : CellMembranePolarityPackage} (F : PolarityFeedbackPackage P) : Prop :=
  F.positiveFeedbackLoop ∧ F.selfReinforcingGradient ∧ F.robustnessToNoise ∧ F.cellSizeScaling

theorem polarity_feedback_closed_from_evidence {P : CellMembranePolarityPackage} (F : PolarityFeedbackPackage P) (E : PolarityFeedbackEvidence F) :
    PolarityFeedbackClosed F := by
  exact And.intro E.positiveFeedbackLoopClosed (And.intro E.selfReinforcingGradientClosed (And.intro E.robustnessToNoiseClosed E.cellSizeScalingClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse