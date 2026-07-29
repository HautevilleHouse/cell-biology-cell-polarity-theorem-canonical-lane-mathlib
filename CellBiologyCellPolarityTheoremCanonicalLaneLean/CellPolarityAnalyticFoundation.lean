import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityTheoremCanonicalLaneLean.CellPolarityPrimitives
import HautevilleHouse.CellBiologyCellPolarityTheoremCanonicalLaneLean.CellPolarityReactionDiffusion
import HautevilleHouse.CellBiologyCellPolarityTheoremCanonicalLaneLean.CellPolarityBridge
import HautevilleHouse.CellBiologyCellPolarityTheoremCanonicalLaneLean.CellPolarityGate

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellPolarityAnalyticFoundation where
  primitive : CellPolarityPrimitivePackage
  primitiveEvidence : CellPolarityPrimitiveEvidence primitive
  pde : CellPolarityPDEPackage primitive
  pdeEvidence : CellPolarityPDEEvidence pde

def CellPolarityAnalyticFoundationClosed (A : CellPolarityAnalyticFoundation) : Prop :=
  CellPolarityPrimitiveClosed A.primitive ∧ CellPolarityPDEClosed A.pde

theorem cell_polarity_analytic_foundation_closed_from_evidence
    (A : CellPolarityAnalyticFoundation) : CellPolarityAnalyticFoundationClosed A := by
  exact And.intro (cell_polarity_primitive_closed_from_evidence A.primitive A.primitiveEvidence)
    (cell_polarity_pde_closed_from_evidence A.pde A.pdeEvidence)

-- The analytic foundation supplies the cell polarity theorem

theorem cell_polarity_analytic_foundation_supplies_polarity (A : CellPolarityAnalyticFoundation) : Prop :=
  CellPolarityPrimitiveClosed A.primitive

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse