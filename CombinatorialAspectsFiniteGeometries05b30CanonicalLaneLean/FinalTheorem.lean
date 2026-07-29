import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.FiniteGeometryClosure

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

def ConstrainedCombinatorialGeometryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combinatorial_geometry_endgame (A : AdmissibleClass) :
    ConstrainedCombinatorialGeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse