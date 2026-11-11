@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZMaterials_EX'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_MATERIALS_EX
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_MATERIALS_EX
  association [1..1] to ZR_MATERIALS_EX as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ItemID,
  MaterialID,
  MaterialDescription,
  Plant,
  @Semantics: {
    Quantity.Unitofmeasure: 'QuantityUnit'
  }
  Quantity,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  QuantityUnit,
  RequisitionerID,
  RequiredByDate,
  Note,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
