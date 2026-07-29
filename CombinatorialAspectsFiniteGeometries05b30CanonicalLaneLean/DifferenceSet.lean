import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure DifferenceSetPackage where
  group : Type u
  multiplier : Nat
  parameters : Nat × Nat × Nat
  differenceSetProperty : Prop
  multiplierTheorem : Prop

structure DifferenceSetEvidence (D : DifferenceSetPackage) where
  groupDefined : D.group = D.group
  parametersDefined : D.parameters = D.parameters
  differenceSetPropertyClosed : D.differenceSetProperty
  multiplierTheoremClosed : D.multiplierTheorem

def DifferenceSetClosed (D : DifferenceSetPackage) : Prop :=
  D.differenceSetProperty ∧ D.multiplierTheorem

theorem difference_set_closed_from_evidence (D : DifferenceSetPackage) (E : DifferenceSetEvidence D) : DifferenceSetClosed D := by
  exact And.intro E.differenceSetPropertyClosed E.multiplierTheoremClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse