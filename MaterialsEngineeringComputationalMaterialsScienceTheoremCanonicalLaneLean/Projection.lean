import HautevilleHouse.MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def materialsProjection : Projection MaterialsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem materials_projection_idempotent (x : MaterialsEndgameState) :
    materialsProjection.toFun (materialsProjection.toFun x) = materialsProjection.toFun x := by
  exact materialsProjection.idempotent x

end MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean
end HautevilleHouse