import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellPolarityAdmittedObject where
  cellType : Type
  polarityMarker : Type
  apicalDomain : Prop
  basalDomain : Prop
  tightJunctions : Prop
  polarityEstablished : Prop
  conclusion : polarityEstablished

def CellPolarityWitnessClosed (O : CellPolarityAdmittedObject) : Prop :=
  O.polarityEstablished

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse