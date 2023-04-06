<#if po.fieldDbType=='Blob'>
    private transient java.lang.String ${camelToDashed(po.fieldName)}String;

    private byte[] ${camelToDashed(po.fieldName)};

    public byte[] get${camelToDashed(po.fieldName)?cap_first}(){
        if(${camelToDashed(po.fieldName)}String==null){
            return null;
        }
        try {
            return ${camelToDashed(po.fieldName)}String.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String get${camelToDashed(po.fieldName)?cap_first}String(){
        if(${camelToDashed(po.fieldName)}==null || ${camelToDashed(po.fieldName)}.length==0){
            return "";
        }
        try {
            return new String(${camelToDashed(po.fieldName)},"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return "";
    }
<#else>
    @ApiModelProperty(value = "${po.filedComment?replace("(\n)+",";",'r')}")
    <#if po.fieldDbName == 'del_flag'>
    @TableLogic
  </#if>
    private ${po.fieldType} ${camelToDashed(po.fieldName)};
</#if>