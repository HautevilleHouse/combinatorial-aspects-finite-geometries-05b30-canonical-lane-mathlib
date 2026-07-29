import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure BlockDesignPackage where
  pointSet : Type u
  blockSet : Type v
  incidence : pointSet → blockSet → Prop
  regular : Prop
  balanced : Prop
  v : ℕ
  k : ℕ
  λ : ℕ
  incidenceStructure : Prop

structure BlockDesignEvidence (B : BlockDesignPackage) where
  regularClosed : B.regular
  balancedClosed : B.balanced
  incidenceStructureClosed : B.incidenceStructure

def BlockDesignClosed (B : BlockDesignPackage) : Prop :=
  B.regular ∧ B.balanced ∧ B.incidenceStructure

theorem block_design_closed_from_evidence (B : BlockDesignPackage) (E : BlockDesignEvidence B) :
    BlockDesignClosed B := by
  exact And.intro E.regularClosed (And.intro E.balancedClosed E.incidenceStructureClosed)

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse