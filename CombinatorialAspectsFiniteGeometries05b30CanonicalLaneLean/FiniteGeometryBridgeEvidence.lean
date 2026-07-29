import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.DesignTheoryStructures
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.FiniteGeometryAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

theorem finite_projective_plane_bridge (F : FiniteProjectivePlane) :
    (F.order = (F.pointSet.card - 1)) ∨ (F.order = (F.blockSet.card - 1)) := by
  have h1 : F.pointSet.card = F.order^2 + F.order + 1 := by
    have := F.finite_projective_plane_axioms
    exact this.point_card_formula
  have h2 : F.blockSet.card = F.order^2 + F.order + 1 := by
    have := F.finite_projective_plane_axioms
    exact this.block_card_formula
  left
  calc
    F.order = (F.order^2 + F.order + 1) - 1 := by
      ring
    _ = F.pointSet.card - 1 := by rw [h1]

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse