import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse