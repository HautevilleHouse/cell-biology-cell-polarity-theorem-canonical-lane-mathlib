import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure CellPolaritySystemPackage where
  cellMembrane : Type u
  cytoskeleton : Type v
  signalingMolecules : Type w
  polarityMarkers : Type x
  membranePolarized : Prop
  cytoskeletonPolarized : Prop
  signalingGradient : Prop
  markerAsymmetrySustained : Prop

structure CellPolaritySystemEvidence (S : CellPolaritySystemPackage) where
  membranePolarizedClosed : S.membranePolarized
  cytoskeletonPolarizedClosed : S.cytoskeletonPolarized
  signalingGradientClosed : S.signalingGradient
  markerAsymmetrySustainedClosed : S.markerAsymmetrySustained

def CellPolaritySystemClosed (S : CellPolaritySystemPackage) : Prop :=
  S.membranePolarized ∧ S.cytoskeletonPolarized ∧ S.signalingGradient ∧ S.markerAsymmetrySustained

theorem cell_polarity_system_closed_from_evidence
    (S : CellPolaritySystemPackage) (E : CellPolaritySystemEvidence S) :
    CellPolaritySystemClosed S := by
  exact And.intro E.membranePolarizedClosed
    (And.intro E.cytoskeletonPolarizedClosed
      (And.intro E.signalingGradientClosed E.markerAsymmetrySustainedClosed))

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse