import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure CayleyGraphCompactificationPackage where
  generatingSet : Set ℕ
  boundaryPoints : Type
  boundaryAction : Prop
  compactTopology : Prop
  compactTopologyClosed : compactTopology

def CayleyGraphCompactificationClosed (C : CayleyGraphCompactificationPackage) : Prop :=
  C.compactTopology

theorem cayley_graph_compactification_closed (C : CayleyGraphCompactificationPackage) :
    CayleyGraphCompactificationClosed C :=
  C.compactTopologyClosed

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
