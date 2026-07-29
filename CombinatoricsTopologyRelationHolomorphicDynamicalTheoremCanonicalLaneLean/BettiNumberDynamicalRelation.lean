import canonicalLaneMathlib.AdmissibleClass
import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.CombinatorialTopologyHolomorphicDynamical
import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.EulerCharacteristicPoincareDuality

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure BettiNumberPackage where
  complex : CombinatorialComplex
  bettiNumbers : List ℕ
  hodgeDecomposition : Prop
  relationToFlow : Prop

structure DynamicalRelationEvidence where
  bettiClosed : BettiNumberPackage
  flowClosed : HolomorphicFlowClassificationPackage
  bettiFlowRelation : bettiClosed.relationToFlow ↔ flowClosed.periodicOrbitsClassified

def BettiDynamicalClosure (E : DynamicalRelationEvidence) : Prop :=
  E.bettiClosed.hodgeDecomposition ∧ E.bettiClosed.relationToFlow ∧ E.bettiFlowRelation

theorem betti_dynamical_closed (E : DynamicalRelationEvidence) : BettiDynamicalClosure E :=
  And.intro (And.intro E.bettiClosed.hodgeDecomposition E.bettiClosed.relationToFlow) E.bettiFlowRelation

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse