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



Extension: RelatedMedication
* extension contains
    relation 1..1 MS and
    definedMedication 1..* MS
* extension[relation] ^short = "Type of relation"
* extension[relation].value[x] only Coding
//* extension[relation].valueCoding from MedRelationTypes (required) 

* extension[definedMedication].value[x] only CodeableConcept or Reference (DefinedMed)



Profile: MedicationStatement-uv-ips-ext
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips

* extension contains RelatedMedication 0..1 MS 
  

Profile: IPSXtended
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips

//* section[sectionMedications].entry[medicationStatement] only Reference(MedicationStatement-uv-ips-ext)
