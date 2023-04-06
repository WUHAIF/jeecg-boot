<#if po.fieldDbType=='Blob'>

<#else>
    public ${po.fieldType} get${camelToDashed(po.fieldName)?cap_first}() {
        return ${camelToDashed(po.fieldName)};
    }
</#if>