import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

def ConstrainedHolomorphicDynamicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_holomorphic_dynamical_endgame (A : AdmissibleClass) :
    ConstrainedHolomorphicDynamicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
