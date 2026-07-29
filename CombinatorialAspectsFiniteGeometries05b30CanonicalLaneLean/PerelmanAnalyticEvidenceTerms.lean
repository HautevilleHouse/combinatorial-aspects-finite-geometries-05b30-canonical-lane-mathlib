import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.BlockDesign

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure DesignEvidenceTerms (D : BalancedIncompleteBlockDesign) where
  blockDesignClosed : BlockDesignClosed D

def BalancedIncompleteBlockDesign.evidenceTerms (D : BalancedIncompleteBlockDesign) (E : BlockDesignEvidence D) : DesignEvidenceTerms D :=
  { blockDesignClosed := block_design_closed_from_evidence D E }

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse