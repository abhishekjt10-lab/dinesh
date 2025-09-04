@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for ECR'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zecm_ecr_c 
provider contract transactional_query
as projection on zecm_ecr_i
{
    key EcrKey,
    EcrId,
    @UI.textArrangement: #TEXT_ONLY
    EcrType,
    EcrDesc,
    @ObjectModel.text.element: [ 'ProcVarDesc' ]
    EcrProcVar,
    _var.ProcVarDesc as ProcVarDesc,
    EcrInitiator,
    EcrChgRep,
    EcrInitMgr,
    @Semantics.largeObject:{
    mimeType: 'Mimetype',
    fileName: 'Filename',
    acceptableMimeTypes: [ 'application/vnd.ms-excel',
    'application/vnd.openxmlformats-officedocument.spreedsheetml.sheet' ],
    contentDispositionPreference: #ATTACHMENT   
    }    
    attach,
    mimetype,
    filename,    
    EcrCorrIntDoc,
    EcrCostRed,
    HideAdmin,
    EcrNewSupler,
    EcrOthers,
    EcrOthersTxt,
    PlanTrDate,
    PlanFrDate,
@Semantics.user.createdBy: true 
    CreatedBy,
@Semantics.systemDateTime.createdAt: true    
    CreatedAt,
@Semantics.user.lastChangedBy: true    
    LastChangedBy,
@Semantics.systemDateTime.lastChangedAt: true    
    LastChangedAt,
    IsCostPspReq,
    @Semantics.amount.currencyCode: 'Waerk'    
    Amount,
    Waerk,
//        @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat,
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_ECM_VIRTUAL'
    virtual hide_ad : abap_boolean ,
    /* Associations */
    _costana : redirected to composition child zecm_ecr_costana_c,
    _cusphstsk : redirected to composition child zecm_ecr_cusphstsk_c,
    _invcus : redirected to composition child zecm_ecr_invcus_c,
    _mpc : redirected to composition child zecm_ecr_mpc_c,
    _obj2chng : redirected to composition child zecm_ecr_pbj2chng_c,
    _att : redirected to composition child zecm_ecr_att_c,
    _var
}
