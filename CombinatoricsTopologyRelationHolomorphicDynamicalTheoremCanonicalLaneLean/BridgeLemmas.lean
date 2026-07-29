import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HolomorphicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
