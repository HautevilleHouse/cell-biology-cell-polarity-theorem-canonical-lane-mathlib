import CellBiologyCellPolarityTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def polarityProjection : Projection PolarityEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem polarity_projection_idempotent (x : PolarityEndgameState) :
    polarityProjection.toFun (polarityProjection.toFun x) = polarityProjection.toFun x := by
  exact polarityProjection.idempotent x

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse
