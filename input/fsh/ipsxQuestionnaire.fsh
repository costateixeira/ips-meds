
Instance: questionnaire-ipsx
InstanceOf: Questionnaire
Description: "IPS Form"
Title:    "International Patient Summary - Extended Medications"

* identifier[0].system = "http://hl7belgium.org"
* identifier[0].value = "questionnaire-ipsx"

* name = "questionnaire-ipsx"
* title = "International Patient Summary - Extended Medications"
* status = #active



* insert Question(,meds,Medications,group,true,true)
* item[=]
//  * insert Question(,phpid,Pharmaceutical Product Identifier,string,false,false)
  * insert Question(,mpid,Medicinal Product Identifier,string,false,false)
  * insert Question(,pcid,Packaged Product Identifier,string,false,false)
  * insert Question(,other_id,Other Product Identifier,group,false,true)
  * insert Question(item[=].,other_id_type,Identifier Type,choice,false,false)
  * insert Question(item[=].,other_id_value,Identifier,string,false,false)
  
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
//  * insert Question(,marketingauhtorization,Marketing Authorization of the product,string,true,true)
  * insert Question(,marketingauhtorization-holder,Marketing Auhtorization Holder,string,true,true)
  * item[=].answerValueSet = Canonical(MAHVS)
  * insert Question(,brandname,Brand Name,choice,true,true)
  * insert Question(,package,Package,group,true,false)
  * insert Question(item[=].,packsize,Package Size,quantity,true,false)
  * insert Question(item[=].,packtype,Package Type,choice,true,false)
  * item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medicationknowledge-package-type"
