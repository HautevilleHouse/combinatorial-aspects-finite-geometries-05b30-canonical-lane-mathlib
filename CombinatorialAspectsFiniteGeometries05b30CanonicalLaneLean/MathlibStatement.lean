import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "CombinatorialAspectsFiniteGeometries05b30",
  theoremObject := "Kirkman triple systems, projective planes, orthogonal arrays",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def theoremSpecificEndgamePilotClosed : Prop :=
  ∀ A : AdmissibleClass, ConstrainedDesignClosure A

theorem theorem_specific_endgame_pilot_checked : theoremSpecificEndgamePilotClosed :=
  λ A => constrained_design_endgame A

end CombinatorialAspectsFiniteGeometries05b30CanonicalLaneLean
end HautevilleHouse