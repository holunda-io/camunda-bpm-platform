<#macro dto_macro docsUrl="">
<@lib.dto >
    
    <@lib.property
        name = "permissions"
        type = "array"
        itemType = "string"
        desc = "An array of Strings holding the permissions provided by this authorization."
    />
    
    <@lib.property
        name = "userId"
        type = "string"
        desc = "The id of the user this authorization has been created for. The value `*`
                represents a global authorization ranging over all users."
    />
    
    <@lib.property
        name = "groupId"
        type = "string"
        desc = "The id of the group this authorization has been created for."
    />
    
    <@lib.property
        name = "resourceType"
        type = "integer"
        format = "int32"
        desc = "An integer representing the resource type. See the
                [User Guide](${docsUrl}/user-guide/process-engine/authorization-service/#resources)
                for a list of integer representations of resource types."
    />
    
    <@lib.property
        name = "resourceId"
        type = "string"
        last = true
        desc = "The resource Id. The value `*` represents an authorization ranging over all
                instances of a resource."
    />

</@lib.dto>
</#macro>