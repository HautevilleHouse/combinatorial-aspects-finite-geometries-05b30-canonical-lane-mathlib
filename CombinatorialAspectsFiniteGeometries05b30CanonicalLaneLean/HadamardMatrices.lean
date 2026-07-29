import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.DifferenceSets

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure HadamardMatrixParameters where
  order : ℕ  -- n

structure HadamardMatrix where
  params : HadamardMatrixParameters
  matrix : ℕ → ℕ → ℤ
  entriesPlusMinusOne : Prop
  rowsOrthogonal : Prop

def HadamardMatrixClosed (H : HadamardMatrix) : Prop :=
  H.params.order % 4 = 0 ∨ H.params.order = 1 ∨ H.params.order = 2

structure HadamardMatrixEvidence (H : HadamardMatrix) where
  entriesPlusMinusOneClosed : H.entriesPlusMinusOne
  rowsOrthogonalClosed : H.rowsOrthogonal

theorem hadamard_matrix_closed_from_evidence (H : HadamardMatrix) (E : HadamardMatrixEvidence H) : HadamardMatrixClosed H :=
  And.intro E.entriesPlusMinusOneClosed E.rowsOrthogonalClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse