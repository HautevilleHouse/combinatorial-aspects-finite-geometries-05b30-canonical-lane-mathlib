import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.BlockDesign

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure DesignCertificate (D : BalancedIncompleteBlockDesign) where
  designClosed : BlockDesignClosed D
  balanceChecked : D.pairwiseBalance
  replicationChecked : D.constantReplication
  blockSizeChecked : D.constantBlockSize
  additionalChecked : D.additionalEquations

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse