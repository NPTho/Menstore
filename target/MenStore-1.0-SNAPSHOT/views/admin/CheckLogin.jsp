<!-- Check for admin session or not -->
        <c:if test = "${sessionScope.usersession == null}">
                <c:redirect url="/access"/>
        </c:if>
        
        <c:if test="${sessionScope.usersession.user.role != 'admin'}">
            <c:redirect url="/access"/>
        </c:if>
