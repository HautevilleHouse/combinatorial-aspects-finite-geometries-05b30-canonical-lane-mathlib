import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure HadamardDesignPackage where
  order : Nat
  incidenceMatrix : Matrix (Fin (2*order+2)) (Fin (2*order+2)) ℤ
  hadamardProperty : Prop
  symmetricDesign : Prop

structure HadamardDesignEvidence (H : HadamardDesignPackage) where
  matrixDefined : H.incidenceMatrix = H.incidenceMatrix
  hadamardPropertyClosed : H.hadamardProperty
  symmetricDesignClosed : H.symmetricDesign

def HadamardDesignClosed (H : HadamardDesignPackage) : Prop :=
  H.hadamardProperty ∧ H.symmetricDesign

theorem hadamard_design_closed_from_evidence (H : HadamardDesignPackage) (E : HadamardDesignEvidence H) : HadamardDesignClosed H := by
  exact And.intro E.hadamardPropertyClosed E.symmetricDesignClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse