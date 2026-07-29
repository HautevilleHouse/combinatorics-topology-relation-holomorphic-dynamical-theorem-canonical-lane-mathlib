import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheorem

structure HolomorphicActionStructure where
  complexManifold : Type u
  holomorphicAction : Type v
  actionPreservesStructure : Prop
  fiberBundleCompatibility : Prop
  holomorphicInvariants : Prop
  actionPreservesStructureTerm : actionPreservesStructure
  fiberBundleCompatibilityTerm : fiberBundleCompatibility
  holomorphicInvariantsTerm : holomorphicInvariants

structure HolomorphicActionEvidence (H : HolomorphicActionStructure) where
  actionPreservesStructureClosed : H.actionPreservesStructure
  fiberBundleCompatibilityClosed : H.fiberBundleCompatibility
  holomorphicInvariantsClosed : H.holomorphicInvariants

def HolomorphicActionClosed (H : HolomorphicActionStructure) : Prop :=
  H.actionPreservesStructure ∧ H.fiberBundleCompatibility ∧ H.holomorphicInvariants

theorem holomorphic_action_closed_from_evidence (H : HolomorphicActionStructure)
    (E : HolomorphicActionEvidence H) : HolomorphicActionClosed H := by
  exact And.intro E.actionPreservesStructureClosed (And.intro E.fiberBundleCompatibilityClosed E.holomorphicInvariantsClosed)

end CombinatoricsTopologyRelationHolomorphicDynamicalTheorem
end HautevilleHouse