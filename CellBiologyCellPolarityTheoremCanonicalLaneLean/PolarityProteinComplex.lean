import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolarityProteinComplex where
  kinases : Type u
  phosphatases : Type v
  scaffoldProteins : Type w
  kinasePhosphataseInteraction : Prop
  scaffoldComplexFormation : Prop
  complexAssemblyRegulation : Prop
  kinasePhosphataseInteractionTerm : kinasePhosphataseInteraction
  scaffoldComplexFormationTerm : scaffoldComplexFormation
  complexAssemblyRegulationTerm : complexAssemblyRegulation

structure PolarityProteinComplexEvidence (P : PolarityProteinComplex) where
  kinasePhosphataseInteractionClosed : P.kinasePhosphataseInteraction
  scaffoldComplexFormationClosed : P.scaffoldComplexFormation
  complexAssemblyRegulationClosed : P.complexAssemblyRegulation

def PolarityProteinComplexClosed (P : PolarityProteinComplex) : Prop :=
  P.kinasePhosphataseInteraction ∧ P.scaffoldComplexFormation ∧ P.complexAssemblyRegulation

theorem polarity_protein_complex_closed_from_evidence (P : PolarityProteinComplex)
    (E : PolarityProteinComplexEvidence P) : PolarityProteinComplexClosed P := by
  exact And.intro E.kinasePhosphataseInteractionClosed
    (And.intro E.scaffoldComplexFormationClosed E.complexAssemblyRegulationClosed)

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse