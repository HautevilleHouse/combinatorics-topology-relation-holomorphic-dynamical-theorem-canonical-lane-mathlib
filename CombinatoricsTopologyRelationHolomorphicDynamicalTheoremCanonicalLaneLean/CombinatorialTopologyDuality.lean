import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure CombinatorialTopologyDuality (C : Type) where
  complex : SimplicialComplex C
  dualComplex : SimplicialComplex C
  dualityMap : complex → dualComplex → HomotopyEquiv
  dualityCondition : Prop
  homologyIsomorphism : Prop
  cohomologyIsomorphism : Prop

def dualityClosed (D : CombinatorialTopologyDuality C) : Prop :=
  D.dualityCondition ∧ D.homologyIsomorphism ∧ D.cohomologyIsomorphism

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
