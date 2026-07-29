import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure DifferenceSetPackage where
  group : Type u
  groupAdd : Add group
  subset : Set group
  parameters : ℕ × ℕ × ℕ
  differenceProperty : Prop

structure DifferenceSetEvidence (D : DifferenceSetPackage) where
  differencePropertyClosed : D.differenceProperty

def DifferenceSetClosed (D : DifferenceSetPackage) : Prop :=
  D.differenceProperty

theorem difference_set_closed_from_evidence (D : DifferenceSetPackage) (E : DifferenceSetEvidence D) :
    DifferenceSetClosed D := by
  exact E.differencePropertyClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse