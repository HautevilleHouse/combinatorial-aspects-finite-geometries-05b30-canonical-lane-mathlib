import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure OrthogonalArrayPackage where
  rows : Nat
  columns : Nat
  symbols : Nat
  strength : Nat
  array : Vector (Vector ℕ columns) rows
  orthogonalProperty : Prop

structure OrthogonalArrayEvidence (O : OrthogonalArrayPackage) where
  orthogonalPropertyClosed : O.orthogonalProperty

def OrthogonalArrayClosed (O : OrthogonalArrayPackage) : Prop :=
  O.orthogonalProperty

theorem orthogonal_array_closed_from_evidence (O : OrthogonalArrayPackage) (E : OrthogonalArrayEvidence O) :
    OrthogonalArrayClosed O := by
  exact E.orthogonalPropertyClosed

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse