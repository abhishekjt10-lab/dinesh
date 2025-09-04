@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for attachments'
@Metadata.allowExtensions: true
define view entity zecm_ecr_att_c as projection on zecm_ecr_att_i
{
    key EcrKey,
    key AttKey,
    Attachment,
    Mimetype,
    Filename,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    locallastchangedat,    
    /* Associations */
    _ecr: redirected to parent zecm_ecr_c
}
