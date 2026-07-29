import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CellBiologyCellPolarityTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

def ConstrainedCellPolarityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_polarity_endgame (A : AdmissibleClass) :
    ConstrainedCellPolarityClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse