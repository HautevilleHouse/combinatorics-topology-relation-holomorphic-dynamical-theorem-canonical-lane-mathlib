import canonicalLaneMathlib.AdmissibleClass
import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.CombinatorialTopologyPackage
import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.HolomorphicDynamicalSystem

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure RelationHolomorphicDynamicalTheoremPackage where
  combinatorialTopology : CombinatorialTopologyPackage
  holomorphicDynamicalSystem : HolomorphicDynamicalSystemPackage
  relationEstablished : Prop
  theoremStatement : Prop
  relationEstablishedClosed : relationEstablished

def RelationHolomorphicDynamicalTheoremClosed (R : RelationHolomorphicDynamicalTheoremPackage) : Prop :=
  CombinatorialTopologyClosed R.combinatorialTopology ∧
  HolomorphicDynamicalSystemClosed R.holomorphicDynamicalSystem ∧
  R.relationEstablished ∧ R.theoremStatement

theorem relation_holomorphic_dynamical_theorem_closed_from_evidence
    (R : RelationHolomorphicDynamicalTheoremPackage) :
    RelationHolomorphicDynamicalTheoremClosed R := by
  refine And.intro (combinatorial_topology_closed_from_evidence R.combinatorialTopology)
    (And.intro (holomorphic_dynamical_system_closed_from_evidence R.holomorphicDynamicalSystem)
      (And.intro R.relationEstablishedClosed R.theoremStatement))

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
