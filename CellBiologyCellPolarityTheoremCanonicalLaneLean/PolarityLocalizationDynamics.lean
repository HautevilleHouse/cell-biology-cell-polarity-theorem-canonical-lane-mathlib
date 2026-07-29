import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityTheoremCanonicalLaneLean

structure PolarityLocalizationDynamicsPackage where
  proteinDiffusionCoefficient : Type u
  activeTransport : Type v
  localizationTimeScale : Prop
  steadyStateAsymmetry : Prop
  initialAsymmetryTrigger : Prop

structure PolarityLocalizationDynamicsEvidence (D : PolarityLocalizationDynamicsPackage) where
  localizationTimeScaleClosed : D.localizationTimeScale
  steadyStateAsymmetryClosed : D.steadyStateAsymmetry
  initialAsymmetryTriggerClosed : D.initialAsymmetryTrigger

def PolarityLocalizationDynamicsClosed (D : PolarityLocalizationDynamicsPackage) : Prop :=
  D.localizationTimeScale ∧ D.steadyStateAsymmetry ∧ D.initialAsymmetryTrigger

theorem polarity_localization_dynamics_closed_from_evidence
    (D : PolarityLocalizationDynamicsPackage) (E : PolarityLocalizationDynamicsEvidence D) :
    PolarityLocalizationDynamicsClosed D := by
  exact And.intro E.localizationTimeScaleClosed
    (And.intro E.steadyStateAsymmetryClosed E.initialAsymmetryTriggerClosed)

end CellBiologyCellPolarityTheoremCanonicalLaneLean
end HautevilleHouse