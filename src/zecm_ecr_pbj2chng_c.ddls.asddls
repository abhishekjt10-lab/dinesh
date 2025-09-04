@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for Obj to be changed'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zecm_ecr_pbj2chng_c as projection on zecm_ecr_obj2chng_i
{
    key EcrKey,
    key Obj2chng,
    Material,
    DocNo,
    DocType,
    DocVer,
    DocPart,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    locallastchangedat,
    /* Associations */
    _ecr: redirected to parent zecm_ecr_c
}
