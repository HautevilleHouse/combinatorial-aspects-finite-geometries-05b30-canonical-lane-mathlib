import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure FiniteGeometry where
  pointCount : ℕ
  lineCount : ℕ
  incidenceRelation : (pointCount : Type) → (lineCount : Type) → Prop
  incidenceAxioms : Prop
  finiteField : Option ℕ

def FiniteGeometryClosed (G : FiniteGeometry) : Prop :=
  G.incidenceAxioms

theorem finite_geometry_closed (G : FiniteGeometry) (h : G.incidenceAxioms) :
    FiniteGeometryClosed G := h

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse