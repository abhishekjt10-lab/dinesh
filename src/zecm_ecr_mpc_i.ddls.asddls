@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for MPC'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zecm_ecr_mpc_i as select from zecm_mpc
association to parent zecm_ecr_i as _ecr
on $projection.EcrKey = _ecr.EcrKey
{
    key ecr_key as EcrKey,
    key mpc_key as MpcKey,
    material as Material,
    product_type as ProductType,
    customer as Customer,
    dsr_plant as DsrPlant,
    production_plant as ProductionPlant,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat,
    _ecr
}
