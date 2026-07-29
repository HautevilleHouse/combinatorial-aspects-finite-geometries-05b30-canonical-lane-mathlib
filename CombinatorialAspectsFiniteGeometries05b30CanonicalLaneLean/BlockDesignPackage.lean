import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure BlockDesignPackage where
  pointSet : Type u
  blockCollection : Set (Set pointSet)
  constantBlockSize : Prop
  pairwiseBalanced : Prop
  resolvability : Prop

structure BlockDesignEvidence (B : BlockDesignPackage) where
  pointSetDefined : B.pointSet = B.pointSet
  blockCollectionDefined : B.blockCollection = B.blockCollection
  constantBlockSizeClosed : B.constantBlockSize
  pairwiseBalancedClosed : B.pairwiseBalanced
  resolvabilityClosed : B.resolvability

def BlockDesignClosed (B : BlockDesignPackage) : Prop :=
  B.constantBlockSize ∧ B.pairwiseBalanced ∧ B.resolvability

theorem block_design_closed_from_evidence (B : BlockDesignPackage) (E : BlockDesignEvidence B) : BlockDesignClosed B := by
  exact And.intro E.constantBlockSizeClosed (And.intro E.pairwiseBalancedClosed E.resolvabilityClosed)

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse