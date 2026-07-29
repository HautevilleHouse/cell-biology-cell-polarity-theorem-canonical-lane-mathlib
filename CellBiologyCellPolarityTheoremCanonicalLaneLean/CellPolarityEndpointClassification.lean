import CellBiologyCellPolarityTheoremCanonicalLaneLean.ProteinLocalizationDynamics

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellPolarityEndpointClassification where
  budSiteFormed : Prop
  symmetryBroken : Prop
  polarityAxisStable : Prop
  endpointMatchesPolarityDefinition : Prop

structure CellPolarityEndpointClassificationEvidence (E : CellPolarityEndpointClassification) where
  budSiteFormedClosed : E.budSiteFormed
  symmetryBrokenClosed : E.symmetryBroken
  polarityAxisStableClosed : E.polarityAxisStable
  endpointMatchesPolarityDefinitionClosed : E.endpointMatchesPolarityDefinition

def CellPolarityEndpointClassificationClosed (E : CellPolarityEndpointClassification) : Prop :=
  E.budSiteFormed ∧ E.symmetryBroken ∧ E.polarityAxisStable ∧ E.endpointMatchesPolarityDefinition

theorem cell_polarity_endpoint_classification_closed_from_evidence
    (E : CellPolarityEndpointClassification) (Ev : CellPolarityEndpointClassificationEvidence E) :
    CellPolarityEndpointClassificationClosed E := by
  exact And.intro Ev.budSiteFormedClosed
    (And.intro Ev.symmetryBrokenClosed
      (And.intro Ev.polarityAxisStableClosed Ev.endpointMatchesPolarityDefinitionClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse