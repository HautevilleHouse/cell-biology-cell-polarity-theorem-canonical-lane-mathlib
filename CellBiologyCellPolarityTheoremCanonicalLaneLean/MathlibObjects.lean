import CellBiologyCellPolarityTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PolaritySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PolarityAdmittedObject where
  space : PolaritySpace
  cellState : Prop
  polarizationAxes : List Type
  parConserved : Prop
  conclusion : parConserved

structure PolarityEndgameState where
  object : PolarityAdmittedObject

def PolarityWitnessClosed (O : PolarityAdmittedObject) : Prop :=
  O.parConserved

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse
