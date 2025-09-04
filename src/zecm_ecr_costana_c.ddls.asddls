@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for cost analysis'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zecm_ecr_costana_c as projection on zecm_ecr_costana_i
{
    key EcrKey,
    key CostKey,
    CostType,
    CostId,
    @Semantics.amount.currencyCode: 'Waerk'  
    Amount,
    Waerk,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _ecr: redirected to parent zecm_ecr_c
}
