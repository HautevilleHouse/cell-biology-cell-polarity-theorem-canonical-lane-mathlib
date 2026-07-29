import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellPolarityAdmissibleObject where
  cell : Type u
  polarityAxisEstablished : Prop
  markerLocalizationAsymmetric : Prop
  functionalReadout : Prop
  polarityAxisEstablishedTerm : polarityAxisEstablished
  markerLocalizationAsymmetricTerm : markerLocalizationAsymmetric
  functionalReadoutTerm : functionalReadout

structure AdmissibleClass where
  object : CellPolarityAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.polarityAxisEstablished ∧ A.object.markerLocalizationAsymmetric ∧ A.object.functionalReadout

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine And.intro A.object.polarityAxisEstablishedTerm
    (And.intro A.object.markerLocalizationAsymmetricTerm A.object.functionalReadoutTerm)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def CellPolarityConstrainedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cell_polarity_endgame (A : AdmissibleClass) : CellPolarityConstrainedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse