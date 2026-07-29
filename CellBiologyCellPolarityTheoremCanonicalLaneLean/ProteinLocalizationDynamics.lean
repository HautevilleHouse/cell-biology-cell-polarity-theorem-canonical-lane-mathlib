import CellBiologyCellPolarityTheoremCanonicalLaneLean.PolaritySignalingNetwork

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure ProteinLocalizationDynamics where
  membraneProteins : Prop
  cytosolicProteins : Prop
  diffusionReaction : Prop
  feedbackControl : Prop

structure ProteinLocalizationDynamicsEvidence (D : ProteinLocalizationDynamics) where
  membraneProteinsClosed : D.membraneProteins
  cytosolicProteinsClosed : D.cytosolicProteins
  diffusionReactionClosed : D.diffusionReaction
  feedbackControlClosed : D.feedbackControl

def ProteinLocalizationDynamicsClosed (D : ProteinLocalizationDynamics) : Prop :=
  D.membraneProteins ∧ D.cytosolicProteins ∧ D.diffusionReaction ∧ D.feedbackControl

theorem protein_localization_dynamics_closed_from_evidence
    (D : ProteinLocalizationDynamics) (E : ProteinLocalizationDynamicsEvidence D) :
    ProteinLocalizationDynamicsClosed D := by
  exact And.intro E.membraneProteinsClosed
    (And.intro E.cytosolicProteinsClosed
      (And.intro E.diffusionReactionClosed E.feedbackControlClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse