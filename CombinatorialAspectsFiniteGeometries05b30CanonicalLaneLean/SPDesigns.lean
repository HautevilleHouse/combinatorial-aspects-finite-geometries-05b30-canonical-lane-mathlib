import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure SPDesignPackage where
  pointSet : Type u
  blockSet : Set (Set pointSet)
  parameterLambda : ℕ
  everyPairPointsInLambdaBlocks : Prop

structure SPDesignEvidence (D : SPDesignPackage) where
  everyPairPointsInLambdaBlocksClosed : D.everyPairPointsInLambdaBlocks

def SPDesignClosed (D : SPDesignPackage) : Prop :=
  D.everyPairPointsInLambdaBlocks

theorem sp_design_closed_from_evidence (D : SPDesignPackage) (E : SPDesignEvidence D) :
    SPDesignClosed D := by
  exact E.everyPairPointsInLambdaBlocksClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse