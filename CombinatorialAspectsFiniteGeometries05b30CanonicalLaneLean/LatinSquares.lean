import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.HadamardMatrices

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure LatinSquareParameters where
  order : ℕ  -- n

structure LatinSquare where
  params : LatinSquareParameters
  square : ℕ → ℕ → ℕ
  eachRowPermutation : Prop
  eachColumnPermutation : Prop

def LatinSquareClosed (L : LatinSquare) : Prop :=
  L.params.order ≥ 1

structure LatinSquareEvidence (L : LatinSquare) where
  eachRowPermutationClosed : L.eachRowPermutation
  eachColumnPermutationClosed : L.eachColumnPermutation

theorem latin_square_closed_from_evidence (L : LatinSquare) (E : LatinSquareEvidence L) : LatinSquareClosed L :=
  And.intro E.eachRowPermutationClosed E.eachColumnPermutationClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse