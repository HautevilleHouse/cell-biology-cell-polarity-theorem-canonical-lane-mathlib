import CellBiologyCellPolarityTheoremCanonicalLaneLean.PolarityEstablishment

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellPolarityAnalyticCertificate (P : PolarityEstablishmentPackage) where
  initialAsymmetryTerm : P.initialAsymmetry
  stochasticPerturbationTerm : P.stochasticPerturbation
  amplificationTerm : P.amplification
  maintenanceTerm : P.maintenance
  evidence : PolarityEstablishmentEvidence P

def CellPolarityAnalyticCertificateClosed
    {P : PolarityEstablishmentPackage} (C : CellPolarityAnalyticCertificate P) : Prop :=
  P.initialAsymmetry ∧ P.stochasticPerturbation ∧ P.amplification ∧ P.maintenance ∧
  PolarityEstablishmentClosed P

theorem cell_polarity_analytic_certificate_closed
    {P : PolarityEstablishmentPackage} (C : CellPolarityAnalyticCertificate P) :
    CellPolarityAnalyticCertificateClosed C := by
  exact And.intro C.initialAsymmetryTerm
    (And.intro C.stochasticPerturbationTerm
      (And.intro C.amplificationTerm
        (And.intro C.maintenanceTerm
          (polarity_establishment_closed_from_evidence P C.evidence))))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse