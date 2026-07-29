import CellBiologyCellPolarityTheoremCanonicalLaneLean.CellPolarityAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolaritySignalingNetwork where
  rhoGtpaseCycle : Prop
  polarityMarkers : Prop
  feedbackLoops : Prop
  spatialCues : Prop

structure PolaritySignalingNetworkEvidence (N : PolaritySignalingNetwork) where
  rhoGtpaseCycleClosed : N.rhoGtpaseCycle
  polarityMarkersClosed : N.polarityMarkers
  feedbackLoopsClosed : N.feedbackLoops
  spatialCuesClosed : N.spatialCues

def PolaritySignalingNetworkClosed (N : PolaritySignalingNetwork) : Prop :=
  N.rhoGtpaseCycle ∧ N.polarityMarkers ∧ N.feedbackLoops ∧ N.spatialCues

theorem polarity_signaling_network_closed_from_evidence
    (N : PolaritySignalingNetwork) (E : PolaritySignalingNetworkEvidence N) :
    PolaritySignalingNetworkClosed N := by
  exact And.intro E.rhoGtpaseCycleClosed
    (And.intro E.polarityMarkersClosed
      (And.intro E.feedbackLoopsClosed E.spatialCuesClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse