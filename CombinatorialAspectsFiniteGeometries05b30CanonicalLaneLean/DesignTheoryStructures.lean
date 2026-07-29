import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure DesignStructure where
  pointSet : Type u
  blockSet : Type v
  incidence : pointSet → blockSet → Prop
  constantBlockSize : Nat
  constantReplication : Nat

structure BalancedIncompleteBlockDesign extends DesignStructure where
  lambda : Nat
  balancedCondition : ∀ (x y : pointSet), x ≠ y →
    (Finset.filter (λ (b : blockSet) => incidence x b ∧ incidence y b) Finset.univ).card = lambda
  constantBlockSizeProp : constantBlockSize > 0
  constantReplicationProp : constantReplication > 0
  pointsExceedBlocksProp : (Finset.univ : Finset pointSet).card > 1

structure FiniteProjectivePlane extends BalancedIncompleteBlockDesign where
  order : Nat
  anyTwoLinesIntersect : ∀ (b1 b2 : blockSet), b1 ≠ b2 → ∃ (p : pointSet), incidence p b1 ∧ incidence p b2
  anyTwoPointsDetermineLine : ∀ (p1 p2 : pointSet), p1 ≠ p2 → ∃ (b : blockSet), incidence p1 b ∧ incidence p2 b
  existsQuadrangle : ∃ (p1 p2 p3 p4 : pointSet), ∀ (b : blockSet),
    ¬ (incidence p1 b ∧ incidence p2 b ∧ incidence p3 b ∧ incidence p4 b)

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse