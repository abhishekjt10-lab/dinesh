@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Object to be changed panel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zecm_ecr_obj2chng_i as select from zecm_obj2chng
association to parent zecm_ecr_i as _ecr
on $projection.EcrKey = _ecr.EcrKey
{
    key ecr_key as EcrKey,
    key obj2chng as Obj2chng,
    material as Material,
    doc_no as DocNo,
    doc_type as DocType,
    doc_ver as DocVer,
    doc_part as DocPart,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat,
    _ecr
}
