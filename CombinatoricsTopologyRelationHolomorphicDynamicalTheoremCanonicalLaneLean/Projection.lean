import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def holomorphicProjection : Projection HolomorphicEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem holomorphic_projection_idempotent (x : HolomorphicEndgameState) :
    holomorphicProjection.toFun (holomorphicProjection.toFun x) = holomorphicProjection.toFun x := by
  exact holomorphicProjection.idempotent x

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
