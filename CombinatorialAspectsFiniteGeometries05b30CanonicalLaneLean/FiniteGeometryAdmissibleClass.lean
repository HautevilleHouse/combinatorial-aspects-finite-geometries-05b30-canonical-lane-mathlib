import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure FiniteGeometryAdmittedObject where
  design : DesignStructure
  isProjectivePlane : Prop
  orderPrimePower : Prop
  conclusion : isProjectivePlane → orderPrimePower

structure AdmissibleClass where
  object : FiniteGeometryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Let closed := A.object.conclusion A.object.isProjectivePlane
  closed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse