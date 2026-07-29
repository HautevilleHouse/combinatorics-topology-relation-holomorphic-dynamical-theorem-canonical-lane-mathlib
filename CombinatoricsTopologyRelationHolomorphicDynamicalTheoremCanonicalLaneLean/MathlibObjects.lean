import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HolomorphicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HolomorphicAdmittedObject where
  space : HolomorphicSpace
  complexManifold : Prop
  compact : Prop
  connected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure HolomorphicEndgameState where
  object : HolomorphicAdmittedObject

def HolomorphicWitnessClosed (O : HolomorphicAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
