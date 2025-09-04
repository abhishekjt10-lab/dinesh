@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for ECR'
@Metadata.ignorePropagatedAnnotations: true

define root view entity zecm_ecr_i as 
select 
from zecm_ecr
association to zecm_proc_variant as _var
on $projection.EcrProcVar = _var.EcrProcVar
composition[0..*] of zecm_ecr_mpc_i as _mpc
composition[0..*] of zecm_ecr_invcus_i as _invcus
composition[0..*] of zecm_ecr_obj2chng_i as _obj2chng
composition[0..*] of zecm_ecr_costana_i as _costana
composition[0..*] of zecm_ecr_cusphstsk_i as _cusphstsk
composition[0..*] of zecm_ecr_att_i as _att

{
    key ecr_key as EcrKey,
@EndUserText.quickInfo: 'This is plan team review date of ECR'    
    ecr_id as EcrId,
    ecr_type as EcrType,
    ecr_proc_variant as EcrProcVar,
    ecr_desc as EcrDesc,
    attach as attach,
    mimetype as mimetype,
    filename as filename,     
    ecr_initiator as EcrInitiator,
    ecr_chg_rep as EcrChgRep,
    ecr_init_mgr as EcrInitMgr,
    ecr_corr_int_doc as EcrCorrIntDoc,
    ecr_cost_red as EcrCostRed,
    ecr_new_supler as EcrNewSupler,
    ecr_others as EcrOthers,
    ecr_others_txt as EcrOthersTxt,
    plan_tr_date as PlanTrDate,
    plan_fr_date as PlanFrDate,
    @Semantics.user.createdBy: true 
    created_by as CreatedBy,
@Semantics.systemDateTime.createdAt: true     
    created_at as CreatedAt,
@Semantics.user.lastChangedBy: true     
    last_changed_by as LastChangedBy,
@Semantics.systemDateTime.lastChangedAt: true     
    last_changed_at as LastChangedAt,
    is_cost_psp_req as IsCostPspReq,
    @Semantics.amount.currencyCode : 'Waerk'
    amount as Amount,
    hide_admin as HideAdmin,
    waerk as Waerk,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat,
    _mpc, // Make association public
    _invcus,
    _obj2chng,
    _costana,
    _cusphstsk,
    _var,
    _att
}
