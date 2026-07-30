import HautevilleHouse.MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean
end HautevilleHouse