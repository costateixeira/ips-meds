Extension:      DrugCharacteristic
Parent:         Extension
Id:             drugCharacteristic
Title:          "Drug Characteristic"
Description:    "Drug Characteristic"
* extension contains
    characteristicType 1..1 and
    characteristicValue 1..1 
* extension[characteristicType].value[x] only CodeableConcept
* extension[characteristicValue].value[x] only string or Quantity or CodeableConcept or Attachment or base64Binary or Reference


Profile: DefinedMed
Parent: Medication
* extension contains
    DrugCharacteristic named drugCharacteristic 0..* 


Extension:  DefinedMedication
Parent:     Extension
Id:         definedMedication
* value[x] only CodeableConcept or Reference(DefinedMed)


Extension:  MedRelation
Parent:     Extension
Id:         medRelation
* value[x] only Coding
* valueCoding.code from VSMedRelationTypes (required) 


Extension:  RelatedMedication
Parent:     Extension
Id:         relatedMedication
Title:          "Related Medication"
Description:    "Related Medication"
//* context = 
* extension contains
    MedRelation named medRelation 1..1 MS and
    DefinedMedication named definedMedication 1..* MS 



Profile: MedicationStatement-uv-ips-ext
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips

* extension contains RelatedMedication named relatedMedication 0..1



Profile: IPSXtended
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips

* section[sectionMedications].entry[medicationStatement] only Reference(MedicationStatement-uv-ips-ext)


