import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.FiniteGeometryAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion A.object.isProjectivePlane

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion A.object.isProjectivePlane

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse