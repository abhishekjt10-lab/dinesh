@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Entity for process variant'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zecm_proc_variant as select from zecm_proc_var
{
    key ecr_proc_var as EcrProcVar,
    proc_var_desc as ProcVarDesc
}
