@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Cost analysis panel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zecm_ecr_costana_i as select from zecm_costana
association to parent zecm_ecr_i as _ecr
on $projection.EcrKey = _ecr.EcrKey
{
    key ecr_key as EcrKey,
    key cost_key as CostKey,
    cost_type as CostType,
    cost_id as CostId,
    @Semantics.amount.currencyCode : 'Waerk'
    amount as Amount,
    waerk as Waerk,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat,
    _ecr
}
