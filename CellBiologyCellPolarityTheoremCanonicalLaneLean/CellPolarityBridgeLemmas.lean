import CellBiologyCellPolarityTheoremCanonicalLaneLean.CellPolarityAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

def polarityWitnessClosed (O : CellPolarityObject) : Prop :=
  O.polarityEstablished

def bridgeClosed (A : AdmissibleClass) : Prop :=
  polarityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.polarityEstablished

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse