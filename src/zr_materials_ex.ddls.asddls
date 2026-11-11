@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZMaterials_EX'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_MATERIALS_EX
  as select from ZMATERIALS_EX as Materials
{
  key uuid as UUID,
  item_id as ItemID,
  material_id as MaterialID,
  material_description as MaterialDescription,
  plant as Plant,
  @Semantics.quantity.unitOfMeasure: 'QuantityUnit'
  quantity as Quantity,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  quantity_unit as QuantityUnit,
  requisitioner_id as RequisitionerID,
  required_by_date as RequiredByDate,
  note as Note,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
