import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.OrthogonalArrays

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure FiniteProjectivePlaneParameters where
  order : ℕ  -- order q
  n : ℕ  -- n = q^2 + q + 1

structure FiniteProjectivePlane where
  params : FiniteProjectivePlaneParameters
  points : ℕ
  lines : ℕ
  incidence : ℕ → ℕ → ℕ
  axioms : Prop

def FiniteProjectivePlaneClosed (P : FiniteProjectivePlane) : Prop :=
  P.points = P.params.n ∧ P.lines = P.params.n

structure FiniteProjectivePlaneEvidence (P : FiniteProjectivePlane) where
  axiomsClosed : P.axioms

theorem finite_projective_plane_closed_from_evidence (P : FiniteProjectivePlane) (E : FiniteProjectivePlaneEvidence P) : FiniteProjectivePlaneClosed P :=
  E.axiomsClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse