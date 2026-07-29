import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure HolomorphicDynamicalSystem (X : Type) where
  domain : X → X
  periodicPoints : Set X
  stabilityType : Prop
  entropyMeasure : Measure X
  topologicalEntropy : ℝ
  entropyBound : ∃ (C : ℝ), C ≥ 0 ∧ topologicalEntropy ≤ C
  invariantMeasureStable : Prop

def entropyClosed (H : HolomorphicDynamicalSystem X) : Prop :=
  H.entropyBound ∧ H.invariantMeasureStable

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
