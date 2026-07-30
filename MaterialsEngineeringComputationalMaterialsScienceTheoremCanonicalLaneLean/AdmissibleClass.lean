import HautevilleHouse.MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean

structure AdmissibleClass where
  lane : MaterialsAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean
end HautevilleHouse