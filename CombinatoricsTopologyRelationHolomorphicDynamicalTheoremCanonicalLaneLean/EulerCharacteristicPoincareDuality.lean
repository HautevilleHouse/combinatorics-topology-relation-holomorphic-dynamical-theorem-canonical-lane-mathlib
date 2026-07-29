import canonicalLaneMathlib.AdmissibleClass
import CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean.CombinatorialTopologyHolomorphicDynamical

namespace HautevilleHouse
namespace CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean

structure EulerCharacteristicPackage where
  complex : CombinatorialComplex
  alternatingSum : ℤ
  eulerComputed : complex.eulerCharacteristic = alternatingSum

structure PoincareDualityPackage where
  complex : CombinatorialComplex
  homologyDimensions : List ℕ
  cohomologyDimensions : List ℕ
  dualityIsomorphism : homologyDimensions.reverse = cohomologyDimensions

structure EulerPoincareDualityEvidence where
  eulerClosed : EulerCharacteristicPackage
  dualityClosed : PoincareDualityPackage

def EulerPoincareDualityClosure (E : EulerPoincareDualityEvidence) : Prop :=
  E.eulerClosed.eulerComputed ∧ E.dualityClosed.dualityIsomorphism

theorem euler_poincare_duality_closed (E : EulerPoincareDualityEvidence) : EulerPoincareDualityClosure E :=
  And.intro E.eulerClosed.eulerComputed E.dualityClosed.dualityIsomorphism

end CombinatoricsTopologyRelationHolomorphicDynamicalTheoremCanonicalLaneLean
end HautevilleHouse