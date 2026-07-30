import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean

structure KohnShamState where
  electronDensity : Float -> Float -> Float
  effectivePotential : Float -> Float -> Float
  totalEnergy : Float
  convergenceTolerance : Float

structure ExchangeCorrelationFunctional where
  name : String
  type : String
  parameters : List Float
  spinPolarized : Bool

structure DensityFunctionalTheorySCFClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem dft_scf_endgame (A : AdmissibleClass) :
    DensityFunctionalTheorySCFClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean
end HautevilleHouse