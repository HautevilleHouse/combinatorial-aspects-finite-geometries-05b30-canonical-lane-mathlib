import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure SteinerSystemPackage where
  pointSet : Type u
  lineSet : Set (Set pointSet)
  anyTwoPointsUniqueLine : Prop
  lineSizeAtLeastTwo : Prop

structure SteinerSystemEvidence (S : SteinerSystemPackage) where
  anyTwoPointsUniqueLineClosed : S.anyTwoPointsUniqueLine
  lineSizeAtLeastTwoClosed : S.lineSizeAtLeastTwo

def SteinerSystemClosed (S : SteinerSystemPackage) : Prop :=
  S.anyTwoPointsUniqueLine ∧ S.lineSizeAtLeastTwo

theorem steiner_system_closed_from_evidence (S : SteinerSystemPackage) (E : SteinerSystemEvidence S) :
    SteinerSystemClosed S := by
  exact And.intro E.anyTwoPointsUniqueLineClosed E.lineSizeAtLeastTwoClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse