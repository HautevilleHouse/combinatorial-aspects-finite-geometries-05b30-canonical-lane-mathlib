import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.DesignParameters
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.BlockDesigns

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure DesignExistencePackage {D : DesignParametersPackage} (B : BlockDesignsPackage D) where
  existenceProof : BlockDesignsClosed B
  constructiveMethod : String
  furtherConditions : Prop

def DesignExistenceClosed {D : DesignParametersPackage} {B : BlockDesignsPackage D}
    (E : DesignExistencePackage B) : Prop :=
  E.existenceProof ∧ E.furtherConditions

theorem design_existence_closed_from_evidence {D : DesignParametersPackage}
    {B : BlockDesignsPackage D} (E : DesignExistencePackage B)
    (hProof : E.existenceProof) (hFurther : E.furtherConditions) :
    DesignExistenceClosed E := by
  exact And.intro hProof hFurther

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse