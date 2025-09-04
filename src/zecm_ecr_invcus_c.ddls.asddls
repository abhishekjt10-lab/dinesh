@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for involved customers'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zecm_ecr_invcus_c as projection on ZECM_ECR_INVCUS_I
{
    key EcrKey,
    key InvKey,
    Customer,
    CustSpecAgr,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    locallastchangedat,
    /* Associations */
    _ecr: redirected to parent Zecm_ecr_c
}
