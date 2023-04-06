<#if po.fieldDbType=='Blob'>
<#else>
    public void set${po.fieldName?cap_first}(${po.fieldType} ${camelToDashed(po.fieldName)}) {
        this.${camelToDashed(po.fieldName)} = ${camelToDashed(po.fieldName)};
    }

</#if>