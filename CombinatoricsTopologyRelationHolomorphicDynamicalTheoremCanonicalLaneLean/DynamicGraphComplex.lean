import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure DynamicGraphComplex (G : Type) where
  vertices : Set G
  edges : G → G → Set G
  directedness : Prop
  homotopyType : Type
  homotopyEquiv : HomotopyEquiv homotopyType (SimplexCategory 3)
  closureCondition : Prop

def dynamicGraphClosed (D : DynamicGraphComplex) : Prop :=
  D.closureCondition

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
