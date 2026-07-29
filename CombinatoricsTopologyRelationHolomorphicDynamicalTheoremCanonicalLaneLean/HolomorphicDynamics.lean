import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure HolomorphicDynamicsPackage {G : RiemannianCurvaturePackage}
    (D : DynamicalSystemPackage G) where
  holomorphicFlow : Prop
  criticalPoints : Prop
  juliaSet : Prop
  fatouSet : Prop
  holomorphicEntropy : Prop

structure HolomorphicDynamicsEvidence {G : RiemannianCurvaturePackage}
    {D : DynamicalSystemPackage G} (H : HolomorphicDynamicsPackage D) where
  holomorphicFlowClosed : H.holomorphicFlow
  criticalPointsClosed : H.criticalPoints
  juliaSetClosed : H.juliaSet
  fatouSetClosed : H.fatouSet
  holomorphicEntropyClosed : H.holomorphicEntropy

def HolomorphicDynamicsClosed {G : RiemannianCurvaturePackage}
    {D : DynamicalSystemPackage G} (H : HolomorphicDynamicsPackage D) : Prop :=
  H.holomorphicFlow ∧ H.criticalPoints ∧ H.juliaSet ∧ H.fatouSet ∧ H.holomorphicEntropy

theorem holomorphic_dynamics_closed_from_evidence
    {G : RiemannianCurvaturePackage} {D : DynamicalSystemPackage G}
    (H : HolomorphicDynamicsPackage D) (E : HolomorphicDynamicsEvidence H) :
    HolomorphicDynamicsClosed H := by
  exact And.intro E.holomorphicFlowClosed
    (And.intro E.criticalPointsClosed
      (And.intro E.juliaSetClosed
        (And.intro E.fatouSetClosed E.holomorphicEntropyClosed)))

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
