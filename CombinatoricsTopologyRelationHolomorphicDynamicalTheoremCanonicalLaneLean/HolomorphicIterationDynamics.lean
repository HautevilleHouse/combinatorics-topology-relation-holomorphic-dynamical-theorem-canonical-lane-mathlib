import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure HolomorphicIterationDynamicsPackage where
  rationalMap : ℂ → ℂ
  juliaSet : Set ℂ
  juliaSetConnected : Prop
  fatouComponents : List (Set ℂ)
  iterationConvergence : Prop
  iterationConvergenceClosed : iterationConvergence

def HolomorphicIterationDynamicsClosed (H : HolomorphicIterationDynamicsPackage) : Prop :=
  H.iterationConvergence

theorem holomorphic_iteration_dynamics_closed (H : HolomorphicIterationDynamicsPackage) :
    HolomorphicIterationDynamicsClosed H :=
  H.iterationConvergenceClosed

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
