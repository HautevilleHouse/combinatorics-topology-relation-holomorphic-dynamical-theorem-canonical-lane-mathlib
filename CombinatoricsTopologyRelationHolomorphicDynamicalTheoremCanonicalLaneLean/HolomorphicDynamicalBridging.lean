import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheorem

structure HolomorphicDynamicalBridging where
  holomorphicActionEntropyRelation : Prop
  combinatorialTopologicalCorrespondence : Prop
  spectralInvariantData : Prop
  holomorphicActionEntropyRelationTerm : holomorphicActionEntropyRelation
  combinatorialTopologicalCorrespondenceTerm : combinatorialTopologicalCorrespondence
  spectralInvariantDataTerm : spectralInvariantData

structure BridgingEvidence (B : HolomorphicDynamicalBridging) where
  holomorphicActionEntropyRelationClosed : B.holomorphicActionEntropyRelation
  combinatorialTopologicalCorrespondenceClosed : B.combinatorialTopologicalCorrespondence
  spectralInvariantDataClosed : B.spectralInvariantData

def BridgingClosed (B : HolomorphicDynamicalBridging) : Prop :=
  B.holomorphicActionEntropyRelation ∧ B.combinatorialTopologicalCorrespondence ∧ B.spectralInvariantData

theorem bridging_closed_from_evidence (B : HolomorphicDynamicalBridging)
    (E : BridgingEvidence B) : BridgingClosed B := by
  exact And.intro E.holomorphicActionEntropyRelationClosed
    (And.intro E.combinatorialTopologicalCorrespondenceClosed E.spectralInvariantDataClosed)

end CombinatoricsTopologyRelationHolomorphicDynamicalTheorem
end HautevilleHouse