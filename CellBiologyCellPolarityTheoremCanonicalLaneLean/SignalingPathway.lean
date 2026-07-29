import CellBiologyCellPolarityTheoremCanonicalLaneLean.PolarityModels

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure SignalingPathwayPackage where
  rhoGTPaseActivation : Prop
  cdc42Polarization : Prop
  parComplexAssembly : Prop
  feedbackRegulation : Prop

structure SignalingPathwayEvidence (S : SignalingPathwayPackage) where
  rhoGTPaseActivationClosed : S.rhoGTPaseActivation
  cdc42PolarizationClosed : S.cdc42Polarization
  parComplexAssemblyClosed : S.parComplexAssembly
  feedbackRegulationClosed : S.feedbackRegulation

def SignalingPathwayClosed (S : SignalingPathwayPackage) : Prop :=
  S.rhoGTPaseActivation ∧ S.cdc42Polarization ∧ S.parComplexAssembly ∧ S.feedbackRegulation

theorem signaling_pathway_closed_from_evidence (S : SignalingPathwayPackage) (E : SignalingPathwayEvidence S) : SignalingPathwayClosed S := by
  exact And.intro E.rhoGTPaseActivationClosed (And.intro E.cdc42PolarizationClosed (And.intro E.parComplexAssemblyClosed E.feedbackRegulationClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse