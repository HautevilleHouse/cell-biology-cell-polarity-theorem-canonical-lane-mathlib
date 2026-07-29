import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CytoskeletalPolarityPackage where
  actinFilamentAsymmetry : Prop
  microtubuleOrientation : Prop
  intermediateFilamentPolarization : Prop
  motorProteinTransport : Prop
  vesicleTraffickingPolarity : Prop

structure CytoskeletalPolarityEvidence (C : CytoskeletalPolarityPackage) where
  actinFilamentAsymmetryClosed : C.actinFilamentAsymmetry
  microtubuleOrientationClosed : C.microtubuleOrientation
  intermediateFilamentPolarizationClosed : C.intermediateFilamentPolarization
  motorProteinTransportClosed : C.motorProteinTransport
  vesicleTraffickingPolarityClosed : C.vesicleTraffickingPolarity

def CytoskeletalPolarityClosed (C : CytoskeletalPolarityPackage) : Prop :=
  C.actinFilamentAsymmetry ∧ C.microtubuleOrientation ∧
  C.intermediateFilamentPolarization ∧ C.motorProteinTransport ∧ C.vesicleTraffickingPolarity

theorem cytoskeletal_polarity_closed_from_evidence (C : CytoskeletalPolarityPackage)
    (E : CytoskeletalPolarityEvidence C) : CytoskeletalPolarityClosed C := by
  exact And.intro E.actinFilamentAsymmetryClosed
    (And.intro E.microtubuleOrientationClosed
      (And.intro E.intermediateFilamentPolarizationClosed
        (And.intro E.motorProteinTransportClosed E.vesicleTraffickingPolarityClosed)))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse