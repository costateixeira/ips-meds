RuleSet: Question(context, linkId, text, type, required, repeats)
* {context}item[+].linkId = "{linkId}"
* {context}item[=].text = "{text}"
* {context}item[=].type = #{type}
* {context}item[=].required = {required}
* {context}item[=].repeats = {repeats}


Instance: questionnaire-php
InstanceOf: Questionnaire
Description: "Pharmaceutical Product identifying attributes"
Title:    "Pharmaceutical Product"
* identifier[0].system = "http://hl7belgium.org"
* identifier[0].value = "questionnaire-vmp"
* name = "questionnaire-php"
* title = "Pharmaceutical Product identifying attributes"
* status = #active

* insert Question(,code,Pharmaceutical Product Identifier,string,false,false)
* insert Question(,ingredient,Ingredient,group,true,true)
* insert Question(item[=].,ingredient_substance,Substance,open-choice,true,false)
* item[=].item[=].answerValueSet = Canonical(VSIngredient)
* insert Question(item[=].,ingredient_strength,Strength,quantity,true,false)
* insert Question(item[=].,ingredient_role,Role,choice,true,false)
* item[=].item[=].answerValueSet = Canonical(VSRole)
* insert Question(,doseform,Dose Form,choice,true,false)
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medication-form-codes"
* insert Question(,route,Route of administration,choice,true,true)
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/route-codes"




Instance: questionnaire-mp
InstanceOf: Questionnaire
Description: "Medicinal Product identifying attributes"
Title:    "MP Questionnaire"

* identifier[0].system = "http://hl7belgium.org"
* identifier[0].value = "questionnaire-mp"

* name = "questionnaire-mp"
* title = "Medicinal Product"
* status = #active

* insert Question(,code,Medicinal Product Identifier,string,false,false)
* insert Question(,ingredient,Ingredient,group,true,true)
* insert Question(item[=].,ingredient_substance,Substance,open-choice,true,false)
* item[=].item[=].answerValueSet = Canonical(VSIngredient)
* insert Question(item[=].,ingredient_strength,Strength,quantity,true,false)
* insert Question(item[=].,ingredient_role,Role,choice,true,false)
* item[=].item[=].answerValueSet = Canonical(VSRole)
* insert Question(,doseform,Dose Form,choice,true,false)
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medication-form-codes"
* insert Question(,route,Route of administration,choice,true,true)
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/route-codes"


* insert Question(,marketingauhtorization,Marketing Authorization of the product,string,true,true)
* insert Question(,marketingauhtorization-holder,Marketing Auhtorization Holder,string,true,true)
* item[=].answerValueSet = Canonical(VSMAHolder-cont)
* insert Question(,brandname,Brand Name,choice,true,true)



Instance: questionnaire-pc
InstanceOf: Questionnaire
Description: "Packaged Product identifying attributes"
Title:    "Packaged Product"

* identifier[0].system = "http://hl7belgium.org"
* identifier[0].value = "questionnaire-ampp"

* name = "questionnaire-pc"
* title = "Packaged Product"
* status = #active

* insert Question(,code,Packaged Product Identifier,string,false,false)
* insert Question(,ingredient,Ingredient,group,true,true)
* insert Question(item[=].,ingredient_substance,Substance,open-choice,true,false)
* item[=].item[=].answerValueSet = Canonical(VSIngredient)
* insert Question(item[=].,ingredient_strength,Strength,quantity,true,false)
* insert Question(item[=].,ingredient_role,Role,choice,true,false)
* item[=].item[=].answerValueSet = Canonical(VSRole)
* insert Question(,doseform,Dose Form,choice,true,false)
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medication-form-codes"
* insert Question(,route,Route of administration,choice,true,true)
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/route-codes"
* insert Question(,marketingauhtorization,Marketing Authorization of the product,string,true,true)
* insert Question(,marketingauhtorization-holder,Marketing Auhtorization Holder,string,true,true)
* item[=].answerValueSet = Canonical(VSMAHolder)
* insert Question(,brandname,Brand Name,choice,true,true)
* insert Question(,package,Package,group,true,false)
* insert Question(item[=].,packsize,Package Size,quantity,true,false)
* insert Question(item[=].,packtype,Package Type,choice,true,false)
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medicationknowledge-package-type"

