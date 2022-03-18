Alias:  $SCT = http://snomed.info/sct


CodeSystem: CSRole
Id:         cs-role
Title: "Role Code System"
Description: "Codes for ingredient role"
* #AP 
    "Active Principle"
* #NAP
    "Non-Active"
* #EXP
    "Excipient"


ValueSet: VSRole
Id: vs-role
Title: "Ingredient role Value Set"
Description: "Indicates the role that an ingredient takes into a product"
* include codes from system CSRole



ValueSet: VSMA
Id: be-marketingauthorization-vs
Title: "Marketing Authorization Value Set"
Description: "Indicates the Marketing Authorization for a product"


// Define a local code system
CodeSystem: CSMAHolder
Id:         cs-marketingauthorization-holder
Title: "Marketing Authorization Holder Code System"
Description: "Codes for Marketing Authorization Holder"
* #000001 "AstraZeneca"
* #000002 "Pfizer"
* #000003 "Bayer"

ValueSet: VSMAHolder
Id: vs-marketing-authorization-holder
Title: "Marketing Authorization Holder"
Description:  "Marketing Authorization Holder."
* include codes from system CSMAHolder







// Define a local code system
CodeSystem: CSDoseForm
Id:         cs-doseform
Title: "Dose Form Code System"
Description: "Codes for Dose Form"
* #000001 "Tablet"
* #000002 "Capsule"
* #000003 "Syringe for injection"

ValueSet: VSDoseForm
Id: vs-dose-form
Title: "Dose Form"
Description:  "Dose Form."
* include codes from system CSDoseForm




// Define a local code system
CodeSystem: CSRoute
Id:         cs-route-holder
Title: "Route Code System"
Description: "Codes for Administration Route"
* #000001 "Oral"
* #000002 "Intramuscular"


ValueSet: VSRoute
Id: vs-route-holder
Title: "Route Holder"
Description:  "Route Holder."
* include codes from system CSRoute





ValueSet: VSIngredient
Id: vs-ingredient
Title: "Ingredient"
Description:  "Ingredient."
* include codes from system CSIngredient



CodeSystem: CSMedRelationTypes
Id: Cs-med-relation-types
Title: "Medication Relation Types"
Description:  "Medication Relation Types."
* #000001 "Paracetamol"
* #000002 "Insuline lispro"


ValueSet: VSMedRelationTypes
Id: vs-med-relation-types
Title: "Medication Relation Types"
Description:  "Medication Relation Types."
* include codes from system CSMedRelationTypes


CodeSystem: CSIngredient
Id:         cs-ingredient
Title: "Ingredient Code System"
Description: "Codes for ingredient"
* #000001 
    "Paracetamol"
* #000002 
    "Insuline lispro"
* #000003 
    "Tramadol"
* #000004 
    "Rosuvastatin"   




Instance: VSMedRelationTypes-cont
InstanceOf: ValueSet
Title: "Medication Relation Types"
Description:  "Medication Relation Types."
Usage: #inline
* name = "VSMedRelationTypes-cont"
* id = "vs-med-relation-types-cont"
* status = #active
* compose.include.valueSet = Canonical(VSMedRelationTypes)



Instance: VSRole-cont
InstanceOf: ValueSet
Title: "Ingredient Role"
Description:  "Ingredient Role."
Usage: #inline
* name = "VSRole-cont"
* id = "vs-role-cont"
* status = #active
* compose.include.valueSet = Canonical(VSRole)


Instance: VSIngredient-cont
InstanceOf: ValueSet
Title: "Ingredient"
Description:  "Ingredient."
Usage: #inline
* name = "VSIngredient-cont"
* id = "vs-ingredient-cont"
* status = #active
* compose.include.valueSet = Canonical(VSIngredient)


/*
Instance: VSIngredient-cont
InstanceOf: ValueSet
Title: "Ingredient"
Description:  "Ingredient."
Usage: #inline
* name = "VSIngredient-cont"
* id = "vs-ingredient-cont"
* status = #active
* compose.include.valueSet = Canonical(VSIngredient)
*/

Instance: VSMAHolder-cont
InstanceOf: ValueSet
Title: "Marketing Authorization Holder"
Description:  "Marketing Authorization Holder."
Usage: #inline
* name = "VSMAHolder-cont"
* id = "vs-maholder-cont"
* status = #active
* compose.include.valueSet = Canonical(VSMAHolder)


Instance: VSDoseForm-cont
InstanceOf: ValueSet
Title: "Dose Form"
Description:  "Dose Form."
Usage: #inline
* name = "VSDoseForm-cont"
* id = "vs-doseform-cont"
* status = #active
* compose.include.valueSet = Canonical(VSDoseForm)


Instance: VSRoute-cont
InstanceOf: ValueSet
Title: "Route"
Description:  "Route."
Usage: #inline
* name = "VSRoute-cont"
* id = "vs-route-cont"
* status = #active
* compose.include.valueSet = Canonical(VSRoute)




CodeSystem: CSPackType
Id: cs-pack-types
Title: "Medication Package Types"
Description:  "Medication Package Types."
* #000001 "Box"
* #000002 "Vial"


ValueSet: VSPackType
Id: vs-pack-type
Title: "Medication Package Types"
Description:  "Medication Package Types."
* include codes from system CSPackType




Instance: VSPackType-cont
InstanceOf: ValueSet
Title: "PackType"
Description:  "PackType."
Usage: #inline
* name = "VSPackType-cont"
* id = "vs-pack-type-cont"
* status = #active
* compose.include.valueSet = Canonical(VSPackType)

