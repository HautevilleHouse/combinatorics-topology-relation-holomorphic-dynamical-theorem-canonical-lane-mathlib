import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheorem

structure CombinatorialDynamicalSystem where
  stateSpace : Type u
  transitionGraph : Type v
  graphStructure : Prop
  recurrenceStructure : Prop
  entropyType : Prop
  graphStructureTerm : graphStructure
  recurrenceStructureTerm : recurrenceStructure
  entropyTypeTerm : entropyType

structure DynamicalGraphEvidence (C : CombinatorialDynamicalSystem) where
  graphStructureClosed : C.graphStructure
  recurrenceStructureClosed : C.recurrenceStructure
  entropyTypeClosed : C.entropyType

def DynamicalGraphClosed (C : CombinatorialDynamicalSystem) : Prop :=
  C.graphStructure ∧ C.recurrenceStructure ∧ C.entropyType

theorem dynamical_graph_closed_from_evidence (C : CombinatorialDynamicalSystem)
    (E : DynamicalGraphEvidence C) : DynamicalGraphClosed C := by
  exact And.intro E.graphStructureClosed (And.intro E.recurrenceStructureClosed E.entropyTypeClosed)

end CombinatoricsTopologyRelationHolomorphicDynamicalTheorem
end HautevilleHouse