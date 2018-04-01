            <%@ include file="header.jsp" %>
            <%
             if(session.getAttribute("user")!=null)
            {
                out.print("Hello "+session.getAttribute("user")+",");
            }
            %>
            <br/>
            <br/> 
            <div class="panel">
                <div class="panel-heading">
                    <h3>
                        <i class="icon-time main-color"></i> About</h3>
                </div>
                <div class="panel-body">
                    <br />
                    Nam Ha Bach (namhb4@fpt.edu.vn)
                    <br />
                    OSCP | Security Engineer | Bug bounty hunter | Security Researcher
                    <br />
                    Web Application Security Lecturer (IAW1003/IAW1103)
                    <br/>
                    Phone number: +84 97.37.06.272
                </div>
                 
            </div>
        
            <%@ include file="footer.jsp" %>
