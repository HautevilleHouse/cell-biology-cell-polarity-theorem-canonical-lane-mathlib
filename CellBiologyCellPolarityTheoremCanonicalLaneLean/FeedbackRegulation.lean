import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure FeedbackRegulationPackage {C : PolarityProteinComplex} (A : AsymmetricDistributionPackage C) where
  positiveFeedbackLoop : Prop
  mutualInhibition : Prop
  signalAmplification : Prop
  bistableSwitchBehavior : Prop
  positiveFeedbackLoopTerm : positiveFeedbackLoop
  mutualInhibitionTerm : mutualInhibition
  signalAmplificationTerm : signalAmplification
  bistableSwitchBehaviorTerm : bistableSwitchBehavior

structure FeedbackRegulationEvidence {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    (F : FeedbackRegulationPackage A) where
  positiveFeedbackLoopClosed : F.positiveFeedbackLoop
  mutualInhibitionClosed : F.mutualInhibition
  signalAmplificationClosed : F.signalAmplification
  bistableSwitchBehaviorClosed : F.bistableSwitchBehavior

def FeedbackRegulationClosed {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    (F : FeedbackRegulationPackage A) : Prop :=
  F.positiveFeedbackLoop ∧ F.mutualInhibition ∧ F.signalAmplification ∧ F.bistableSwitchBehavior

theorem feedback_regulation_closed_from_evidence {C : PolarityProteinComplex} {A : AsymmetricDistributionPackage C}
    (F : FeedbackRegulationPackage A) (E : FeedbackRegulationEvidence F) :
    FeedbackRegulationClosed F := by
  exact And.intro E.positiveFeedbackLoopClosed
    (And.intro E.mutualInhibitionClosed
      (And.intro E.signalAmplificationClosed E.bistableSwitchBehaviorClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse