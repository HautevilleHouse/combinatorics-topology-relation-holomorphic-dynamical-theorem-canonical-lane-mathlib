import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure DynamicalSystemPackage (G : RiemannianCurvaturePackage) where
  flow : Type u
  invariantMeasure : Type v
  ergodicity : Prop
  mixing : Prop
  entropy : Prop

structure DynamicalSystemEvidence {G : RiemannianCurvaturePackage}
    (D : DynamicalSystemPackage G) where
  ergodicityClosed : D.ergodicity
  mixingClosed : D.mixing
  entropyClosed : D.entropy

def DynamicalSystemClosed {G : RiemannianCurvaturePackage}
    (D : DynamicalSystemPackage G) : Prop :=
  D.ergodicity ∧ D.mixing ∧ D.entropy

theorem dynamical_system_closed_from_evidence
    {G : RiemannianCurvaturePackage} (D : DynamicalSystemPackage G)
    (E : DynamicalSystemEvidence D) : DynamicalSystemClosed D := by
  exact And.intro E.ergodicityClosed (And.intro E.mixingClosed E.entropyClosed)

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
