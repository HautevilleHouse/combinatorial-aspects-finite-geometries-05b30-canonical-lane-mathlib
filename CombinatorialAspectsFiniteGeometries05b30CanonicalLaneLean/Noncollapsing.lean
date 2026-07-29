import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.BlockDesign

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure NoncollapsingPackage (D : BalancedIncompleteBlockDesign) where
  noTrivialReplication : D.params.r > 1
  noTrivialBlockSize : D.params.k > 1
  nondegenerate : D.params.v > D.params.k

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse