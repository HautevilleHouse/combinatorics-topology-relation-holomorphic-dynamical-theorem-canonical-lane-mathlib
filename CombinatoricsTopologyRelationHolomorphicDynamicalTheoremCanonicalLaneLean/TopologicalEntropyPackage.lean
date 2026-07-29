import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheorem

structure TopologicalEntropyPackage (C : CombinatorialDynamicalSystem) where
  topologicalEntropy : ℝ
  entropyBoundProof : Prop
  variationalPrinciple : Prop
  entropyBoundProofTerm : entropyBoundProof
  variationalPrincipleTerm : variationalPrinciple

structure TopologicalEntropyEvidence {C : CombinatorialDynamicalSystem}
    (E : TopologicalEntropyPackage C) where
  entropyBoundProofClosed : E.entropyBoundProof
  variationalPrincipleClosed : E.variationalPrinciple

def TopologicalEntropyClosed {C : CombinatorialDynamicalSystem}
    (E : TopologicalEntropyPackage C) : Prop :=
  E.entropyBoundProof ∧ E.variationalPrinciple

theorem topological_entropy_closed_from_evidence {C : CombinatorialDynamicalSystem}
    (E : TopologicalEntropyPackage C) (Ev : TopologicalEntropyEvidence E) :
    TopologicalEntropyClosed E := by
  exact And.intro Ev.entropyBoundProofClosed Ev.variationalPrincipleClosed

end CombinatoricsTopologyRelationHolomorphicDynamicalTheorem
end HautevilleHouse