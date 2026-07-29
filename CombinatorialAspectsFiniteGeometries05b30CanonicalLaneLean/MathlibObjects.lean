import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure FiniteGeometrySpace where
  pointSet : Type
  blockSet : Type
  incidence : pointSet → blockSet → Prop

structure FiniteGeometryAdmittedObject where
  space : FiniteGeometrySpace
  balancedIncompleteBlockDesign : Prop
  orthogonalArray : Prop
  conclusion : balancedIncompleteBlockDesign ∨ orthogonalArray

structure FiniteGeometryEndgameState where
  object : FiniteGeometryAdmittedObject

def FiniteGeometryWitnessClosed (O : FiniteGeometryAdmittedObject) : Prop :=
  O.balancedIncompleteBlockDesign ∨ O.orthogonalArray

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse