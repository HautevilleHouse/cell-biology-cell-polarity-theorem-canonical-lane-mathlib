import CellBiologyCellPolarityTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolarityEstablishmentPackage where
  initialAsymmetry : Prop
  stochasticPerturbation : Prop
  amplification : Prop
  maintenance : Prop

structure PolarityEstablishmentEvidence (P : PolarityEstablishmentPackage) where
  initialAsymmetryClosed : P.initialAsymmetry
  stochasticPerturbationClosed : P.stochasticPerturbation
  amplificationClosed : P.amplification
  maintenanceClosed : P.maintenance

def PolarityEstablishmentClosed (P : PolarityEstablishmentPackage) : Prop :=
  P.initialAsymmetry ∧ P.stochasticPerturbation ∧ P.amplification ∧ P.maintenance

theorem polarity_establishment_closed_from_evidence (P : PolarityEstablishmentPackage)
    (E : PolarityEstablishmentEvidence P) : PolarityEstablishmentClosed P := by
  exact And.intro E.initialAsymmetryClosed
    (And.intro E.stochasticPerturbationClosed
      (And.intro E.amplificationClosed E.maintenanceClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse