@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for involved customers'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zecm_ecr_invcus_i as select from ZECM_INVCUS
association to parent zecm_ecr_i as _ecr
on $projection.EcrKey = _ecr.EcrKey
{
    key ecr_key as EcrKey,
    key inv_key as InvKey,
    customer as Customer,
    cust_spec_agr as CustSpecAgr,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat,
    _ecr
}
