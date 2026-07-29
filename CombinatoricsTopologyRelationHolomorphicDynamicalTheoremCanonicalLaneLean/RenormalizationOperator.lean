import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure RenormalizationOperator (M : Manifold) (f : M → M) where
  periodDoubling : Prop
  scalingLaw : ℝ → ℝ
  universalityClass : Prop
  fixedPoint : M
  hyperbolicity : Prop
  asymptoticStability : Prop

def renormalizationClosed (R : RenormalizationOperator M f) : Prop :=
  R.universalityClass ∧ R.hyperbolicity ∧ R.asymptoticStability

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
