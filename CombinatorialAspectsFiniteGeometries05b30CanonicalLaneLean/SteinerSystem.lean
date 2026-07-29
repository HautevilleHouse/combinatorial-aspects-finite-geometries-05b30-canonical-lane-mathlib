import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure SteinerSystemPackage where
  pointSet : Type u
  blockSet : Set (Set pointSet)
  t : Nat
  k : Nat
  v : Nat
  lambda : Nat
  steinerAxiom : Prop
  parameterConsistency : Prop

structure SteinerSystemEvidence (S : SteinerSystemPackage) where
  pointSetDefined : S.pointSet = S.pointSet
  blockSetDefined : S.blockSet = S.blockSet
  steinerAxiomClosed : S.steinerAxiom
  parameterConsistencyClosed : S.parameterConsistency

def SteinerSystemClosed (S : SteinerSystemPackage) : Prop :=
  S.steinerAxiom ∧ S.parameterConsistency

theorem steiner_system_closed_from_evidence (S : SteinerSystemPackage) (E : SteinerSystemEvidence S) : SteinerSystemClosed S := by
  exact And.intro E.steinerAxiomClosed E.parameterConsistencyClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse