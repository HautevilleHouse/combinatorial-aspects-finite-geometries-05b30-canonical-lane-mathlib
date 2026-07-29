import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure LatinSquarePackage where
  order : Nat
  square : Matrix (Fin order) (Fin order) (Fin order)
  latinConditionRows : Prop
  latinConditionCols : Prop
  orthogonalMates : Prop

structure LatinSquareEvidence (L : LatinSquarePackage) where
  squareDefined : L.square = L.square
  latinConditionRowsClosed : L.latinConditionRows
  latinConditionColsClosed : L.latinConditionCols
  orthogonalMatesClosed : L.orthogonalMates

def LatinSquareClosed (L : LatinSquarePackage) : Prop :=
  L.latinConditionRows ∧ L.latinConditionCols ∧ L.orthogonalMates

theorem latin_square_closed_from_evidence (L : LatinSquarePackage) (E : LatinSquareEvidence L) : LatinSquareClosed L := by
  exact And.intro E.latinConditionRowsClosed (And.intro E.latinConditionColsClosed E.orthogonalMatesClosed)

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse