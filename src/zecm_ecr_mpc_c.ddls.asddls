@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for MPC'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zecm_ecr_mpc_c as projection on ZECM_ECR_MPC_I
{
    key EcrKey,
    key MpcKey,
    Material,
    ProductType,
    Customer,
    DsrPlant,
    ProductionPlant,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    locallastchangedat,
    /* Associations */
    _ecr: redirected to parent Zecm_ecr_c
}
