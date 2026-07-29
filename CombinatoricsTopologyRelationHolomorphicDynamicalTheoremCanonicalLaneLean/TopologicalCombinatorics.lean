import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.HolomorphicDynamics

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure TopologicalCombinatoricsPackage {G : RiemannianCurvaturePackage}
    {D : DynamicalSystemPackage G} {H : HolomorphicDynamicsPackage D} where
  simplicialComplex : Prop
  nerveTheorem : Prop
  graphEmbedding : Prop
  homologyComputation : Prop
  criticalGraph : Prop

structure TopologicalCombinatoricsEvidence {G : RiemannianCurvaturePackage}
    {D : DynamicalSystemPackage G} {H : HolomorphicDynamicsPackage D}
    (T : TopologicalCombinatoricsPackage) where
  simplicialComplexClosed : T.simplicialComplex
  nerveTheoremClosed : T.nerveTheorem
  graphEmbeddingClosed : T.graphEmbedding
  homologyComputationClosed : T.homologyComputation
  criticalGraphClosed : T.criticalGraph

def TopologicalCombinatoricsClosed {G : RiemannianCurvaturePackage}
    {D : DynamicalSystemPackage G} {H : HolomorphicDynamicsPackage D}
    (T : TopologicalCombinatoricsPackage) : Prop :=
  T.simplicialComplex ∧ T.nerveTheorem ∧ T.graphEmbedding ∧ T.homologyComputation ∧ T.criticalGraph

theorem topological_combinatorics_closed_from_evidence
    {G : RiemannianCurvaturePackage} {D : DynamicalSystemPackage G}
    {H : HolomorphicDynamicsPackage D} (T : TopologicalCombinatoricsPackage)
    (E : TopologicalCombinatoricsEvidence T) : TopologicalCombinatoricsClosed T := by
  exact And.intro E.simplicialComplexClosed
    (And.intro E.nerveTheoremClosed
      (And.intro E.graphEmbeddingClosed
        (And.intro E.homologyComputationClosed E.criticalGraphClosed)))

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
