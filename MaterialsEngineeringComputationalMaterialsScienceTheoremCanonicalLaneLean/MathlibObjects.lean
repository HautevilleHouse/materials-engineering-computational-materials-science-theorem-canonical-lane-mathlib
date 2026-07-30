import HautevilleHouse.MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev RepresentativeVolumeElement := String
abbrev MicrostructureDescriptor := String

structure SimulationProcedure where
  compute : RepresentativeVolumeElement -> MicrostructureDescriptor -> Bool

structure HomogenizationRelation where
  relates : RepresentativeVolumeElement -> MicrostructureDescriptor -> Prop

structure ComputationalBound where
  complexityDegree : Nat

structure MaterialsEngineeredObject where
  rve : RepresentativeVolumeElement
  homogenization : HomogenizationRelation
  bound : ComputationalBound

structure MaterialsAdmittedObject where
  engineeredObject : MaterialsEngineeredObject
  projectedLanguage : MicrostructureDescriptor
  solver : SimulationProcedure

structure MaterialsEndgameState where
  admittedObject : MaterialsAdmittedObject

def Decides (M : SimulationProcedure) (L : MicrostructureDescriptor) : Prop :=
  forall x : RepresentativeVolumeElement, M.compute x L = true ↔ (x, L) ∈ {p | True}

end MaterialsEngineeringComputationalMaterialsScienceTheoremCanonicalLaneLean
end HautevilleHouse