//Question(context, linkId, text, type, required, repeats)

Instance: questionnaire-ipsx
InstanceOf: Questionnaire
Description: "IPS Form"
Title:    "International Patient Summary - Extended Medications"

* contained[+] = VSRole-cont
* contained[+] = VSMAHolder-cont
* contained[+] = VSIngredient-cont
* contained[+] = VSRoute-cont
* contained[+] = VSDoseForm-cont

* identifier[0].system = "http://hl7belgium.org"
* identifier[0].value = "questionnaire-ipsx"

* name = "questionnaire-ipsx"
* title = "International Patient Summary - Extended Medications"
* status = #active



* insert Question(,patient,Patient,group,true,false)
* insert Question(,meds,Medications,group,true,true)
* item[=]
  * insert Question(,prodcodesystem,Product Code system,string,false,false)
  * insert Question(,prodcode,Product Code,string,false,false)
  * insert Question(,xbproduct,Cross-border Product?,boolean,false,false)

  * insert Question(,medsx,Cross-border product,group,false,false)

* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath

* item[=].item[=].enableWhen.question = "xbproduct"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true




* item[=].item[=]
  * insert Question(,phpid,Pharmaceutical Product Identifier,string,false,false)
  * insert Question(,mpid,Medicinal Product Identifier,string,false,false)
  * insert Question(,pcid,Packaged Product Identifier,string,false,false)
  * insert Question(,other_id,Other Product Identifier,group,false,true)
  * insert Question(item[=].,other_id_type,Identifier Type,choice,false,false)
  * insert Question(item[=].,other_id_value,Identifier,string,false,false)
  
  * insert Question(,ingredient,Ingredient,group,true,true)
  * insert Question(item[=].,ingredient_substance,Substance,open-choice,true,false)
  * item[=].item[=].answerValueSet = Canonical(VSIngredient-cont)
  * insert Question(item[=].,ingredient_strength,Strength,quantity,true,false)

  * item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
  * item[=].item[=].extension[=].valueCoding = http://unitsofmeasure.org#mg "mg"
  * item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
  * item[=].item[=].extension[=].valueCoding = http://unitsofmeasure.org#ml "ml"


  * insert Question(item[=].,ingredient_role,Role,choice,true,false)
  * item[=].item[=].answerValueSet = Canonical(VSRole-cont)
  * insert Question(,doseform,Dose Form,choice,true,false)
  * item[=].answerValueSet =  Canonical(VSDoseForm-cont)
  * insert Question(,route,Route of administration,choice,true,false)
  * item[=].answerValueSet =  Canonical(VSRoute-cont)
//  * insert Question(,marketingauhtorization,Marketing Authorization of the product,string,true,true)
  * insert Question(,marketingauhtorization-holder,Marketing Auhtorization Holder,choice,true,false)
  * item[=].answerValueSet = Canonical(VSMAHolder-cont)
  * insert Question(,brandname,Brand Name,choice,true,false)
  * insert Question(,package,Package,group,true,false)
  * insert Question(item[=].,packsize,Package Size,quantity,true,false)
  * item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
  * item[=].item[=].extension[=].valueCoding = http://unitsofmeasure.org#tbl "tablets"
  * item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
  * item[=].item[=].extension[=].valueCoding = http://unitsofmeasure.org#ml "ml"
  * item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
  * item[=].item[=].extension[=].valueCoding = http://unitsofmeasure.org#1 "units"
  * insert Question(item[=].,packtype,Package Type,choice,true,false)
  * item[=].answerValueSet = Canonical(VSPackType-cont)
