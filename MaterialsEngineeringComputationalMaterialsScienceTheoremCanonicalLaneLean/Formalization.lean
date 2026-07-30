import HautevilleHouse.MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  packageLayerTranslated : Bool
  formulaLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
deriving Repr, DecidableEq

def formalizationCertificate : FormalizationCertificate := {
  sourceRepo := "materials-engineering-computational-materials-science-theorem-canonical-lane",
  packageLayerTranslated := true,
  formulaLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

theorem formalization_no_source_conjecture_closure_claim :
    formalizationCertificate.sourceConjectureClosureClaimed = false := by
  rfl

theorem formalization_build_checked :
    formalizationCertificate.leanBuildChecked = true := by
  rfl

end MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean
end HautevilleHouse