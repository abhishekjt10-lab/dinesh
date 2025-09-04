@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for Customer phase tasks'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zecm_ecr_cusphstsk_c as projection on ZECM_ECR_CUSPHSTSK_I
{
    key EcrKey,
    key CusKey,
    EcrId,
    Customer,
    ProductType,
    CustSpecAgr,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _ecr : redirected to parent zecm_ecr_c
}
