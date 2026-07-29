import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure SurgeryTheory (M : Manifold) where
  surgeryTimes : Set ℝ
  surgeryRegion : M → Prop
  postSurgeryType : Type
  homologyChange : Homology M → Homology postSurgeryType
  topologyPreserved : Prop
  surgeryStable : Prop

def surgeryClosed (S : SurgeryTheory M) : Prop :=
  S.topologyPreserved ∧ S.surgeryStable

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
