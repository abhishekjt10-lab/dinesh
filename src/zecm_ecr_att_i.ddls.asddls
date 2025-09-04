@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for attachment'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zecm_ecr_att_i as select from zecm_attachment
association to parent zecm_ecr_i as _ecr
on $projection.EcrKey = _ecr.EcrKey
{
    key ecr_key as EcrKey,
    key att_key as AttKey,
    @Semantics.largeObject:{
    mimeType: 'Mimetype',
    fileName: 'Filename',
    contentDispositionPreference: #ATTACHMENT    
    }
    attachment as Attachment,
    mimetype as Mimetype,
    filename as Filename,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat, 
       
    _ecr
}
