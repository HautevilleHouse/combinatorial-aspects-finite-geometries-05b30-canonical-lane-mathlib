import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure FiniteProjectivePlanePackage where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  order : ℕ
  anyTwoPointsOnUniqueLine : Prop
  anyTwoLinesMeetAtUniquePoint : Prop
  atLeastFourPoints : Prop

structure FiniteProjectivePlaneEvidence (P : FiniteProjectivePlanePackage) where
  anyTwoPointsOnUniqueLineClosed : P.anyTwoPointsOnUniqueLine
  anyTwoLinesMeetAtUniquePointClosed : P.anyTwoLinesMeetAtUniquePoint
  atLeastFourPointsClosed : P.atLeastFourPoints

def FiniteProjectivePlaneClosed (P : FiniteProjectivePlanePackage) : Prop :=
  P.anyTwoPointsOnUniqueLine ∧ P.anyTwoLinesMeetAtUniquePoint ∧ P.atLeastFourPoints

theorem finite_projective_plane_closed_from_evidence
    (P : FiniteProjectivePlanePackage) (E : FiniteProjectivePlaneEvidence P) :
    FiniteProjectivePlaneClosed P := by
  exact And.intro E.anyTwoPointsOnUniqueLineClosed
    (And.intro E.anyTwoLinesMeetAtUniquePointClosed E.atLeastFourPointsClosed)

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse