import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

/-!
# Admissible Class for Cell Polarity

This module defines the admissible class structure for the cell polarity
theorem, including the object (a cell polarity system) and the endpoint
satisfied or remainder recorded.
-/

structure CellPolarityAdmittedObject where
  cellType : String
  polarityAxisEstablished : Prop
  endpointMatchesPolarityStatement : Prop

structure AdmissibleClass where
  object : CellPolarityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.endpointMatchesPolarityStatement ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse