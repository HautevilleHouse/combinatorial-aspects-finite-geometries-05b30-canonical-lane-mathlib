import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.DesignParameters

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure BlockDesignsPackage {D : DesignParametersPackage} where
  pointSet : Type u
  blockCollection : Set (Set pointSet)
  blockSizeCondition : ∀ b ∈ blockCollection, Finset.card (Finset.filter (· ∈ b) Finset.univ) = D.k
  pairFrequencyCondition : ∀ x ≠ y, Finset.card (Finset.filter (λ b => x ∈ b ∧ y ∈ b) Finset.univ) = D.λ

def BlockDesignsClosed {D : DesignParametersPackage} (B : BlockDesignsPackage D) : Prop :=
  B.blockSizeCondition ∧ B.pairFrequencyCondition

theorem block_designs_closed_from_evidence {D : DesignParametersPackage} (B : BlockDesignsPackage D)
    (hSize : B.blockSizeCondition) (hFreq : B.pairFrequencyCondition) :
    BlockDesignsClosed B := by
  exact And.intro hSize hFreq

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse