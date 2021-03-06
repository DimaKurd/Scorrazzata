<#assign
    know = Session.SPRING_SECURITY_CONTEXT??
>
<#if know>
    <#assign
        user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        name = user.getUsername()
        isAdmin = user.getAuthorities()?seq_contains('ADMIN')
        currentUserId = user.getId()
>
<#else>
    <#assign
        name = "stranger"
        isAdmin = false
        currentUserId = -1
>
</#if>