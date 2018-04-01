<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.File"%>
<%
   String path = request.getContextPath();
   String configPath=getServletContext().getRealPath("/WEB-INF/config.properties");
   
    Properties properties=new Properties();
    properties.load(new FileInputStream(configPath));
    String siteTitle=properties.getProperty("siteTitle");
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title><%=siteTitle%></title>
	<link rel="icon" href="<%=path%>/favicon.ico">
	<!-- Bootstrap core CSS -->
	<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="<%=path%>/navbar.css" rel="stylesheet">

</head>

<body>

	<div class="container">

		<!-- Static navbar -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					 aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Java Vulnerable Lab</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown" class="active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Vulnerability
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu">
									<a class="test" tabindex="-1" href="#">0x01 - Injection
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li class="dropdown-submenu">
											<a class="test" href="#">SQL Injection
												<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
												<li>
													<a href="<%=path%>/vulnerability/forumposts.jsp?postid=1">Sql Injection 1</a>
												</li>
												<li>
													<a href="<%=path%>/login.jsp">Authentication Bypass</a>
												</li>
												<li>
													<a href="<%=path%>/vulnerability/sqli/download.jsp">Blind SQLi 1</a>
												</li>
												<li>
													<a href="<%=path%>/vulnerability/sqli/union2.jsp">Union 2</a>
												</li>
											</ul>
										</li>
										<li class="dropdown-submenu">
											<a class="test" href="#">XPath Injection
												<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
												<li>
													<a href="<%=path%>/vulnerability/Injection/xpath_login.jsp">Login Bypass</a>
												</li>
											</ul>
										</li>
										<li class="dropdown-submenu">
											<a class="test" href="#">XML Injection
												<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
												<li>
													<a href="<%=path%>/vulnerability/Injection/xxe.jsp">External Entity</a>
												</li>
												<li>
													<a href="<%=path%>/vulnerability/Injection/xslt.jsp?style=1.xsl">XSLT Injection</a>
												</li>
											</ul>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/Injection/orm.jsp?id=1">ORM Injection</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-submenu">
									<a class="test" tabindex="-1" href="#">0x02 - Broken Authentication & Session Management
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="<%=path%>/ForgotPassword.jsp">UserName Enumeration</a>
										</li>
										<li>
											<a href="<%=path%>/login.jsp">Brute Foce Login Page</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/baasm/URLRewriting.jsp;jsessionid=<%=session.getId()%>">Session ID in URL</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/baasm/SiteTitle.jsp">Improper Authentication: Privilege Escalation</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-submenu">
									<a class="test" tabindex="-1" href="#">0x03 - Cross Site Scripting
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li class="dropdown-submenu">
											<a class="test" href="#">Reflected(GET)
												<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
												<li>
													<a href="<%=path%>/vulnerability/xss/search.jsp">Challenge 1</a>
												</li>
												<li>
													<a href="<%=path%>/vulnerability/xss/xss2.jsp">Challenge 2</a>
												</li>
												<li>
													<a href="<%=path%>/vulnerability/xss/xss3.jsp">Challenge 3</a>
												</li>
												<li>
													<a href="<%=path%>/vulnerability/xss/xss4.jsp">Challenge 4</a>
												</li>
											</ul>
										</li>
										<li class="dropdown-submenu">
											<a class="test" href="#">Flash Based
												<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
												<li>
													<a href="<%=path%>/vulnerability/xss/flash/xss1.swf?vuln=<%=path%>">Challenge 1</a>
												</li>
												<li>
													<a href="<%=path%>/vulnerability/xss/flash/exss.jsp">Challenge 2</a>
												</li>
											</ul>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/forum.jsp">Stored XSS(Persistent)</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-submenu">
									<a class="test" tabindex="-1" href="#">0x04 - Insecure Direct Object References
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="<%=path%>/myprofile.jsp?id=<% if(session.getAttribute(" userid ")!=null){ out.print(session.getAttribute("userid"));} %>" title="Make sure you have logged in ">Viewing Details</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/idor/change-email.jsp" title="Make sure you have logged in ">Modifying email ID</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/idor/download.jsp">Download Document</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-submenu">
									<a class="test" tabindex="-1" href="#">0x05 - Security Misconfiguration
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="<%=path%>/install.jsp">Setup Page not removed</a>
										</li>
										<li>
											<a href="<%=path%>/admin/">Default Admin Credentials not changed</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/securitymisconfig/pages.jsp?id=1">Error Handling</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-submenu">
									<a class="test" tabindex="-1" href="#">0x06 - Sensitive Data Exposure
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="<%=path%>/changeCardDetails.jsp">Cleartext Transmission of Sensitive Information</a>
										</li>
										<li>
											<a href="<%=path%>/ForgotPassword.jsp">Storing Login Credentials in Plain Text</a>
										</li>
										<li>
											<a href="<%=path%>/login.jsp">Storing Login Credentials in Plain Text in a cookie</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/sde/hash.jsp">Hashed Credentials</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-submenu">
									<a class="test" tabindex="-1" href="#">0x07 - Missing Function Level Access Control
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="<%=path%>/admin/" title="Hint: Forced Browsing">Challenge 1:Bypass Admin Login</a>
										</li>
										<li>
											<a href="<%=path%>/admin/AddPage.jsp"> Challenge 2: Add Page</a>
										</li>
										<li>
											<a href="<%=path%>/admin/Configure.jsp"> Configure</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/mfac/SearchEngines.jsp"> Crawlers</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-submenu">
									<a class="test" tabindex="-1" href="#">0x08 - CSRF
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="<%=path%>/vulnerability/csrf/change-info.jsp">CSRF 1(GET): Change Info</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/csrf/changepassword.jsp">CSRF 2(POST): Change Password</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-submenu">
									<a class="test" tabindex="-1" href="#">0x09 - Unvalidated Redirect & SSRF
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="<%=path%>/vulnerability/unvalidated/OpenURL.jsp">Open Redirect</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/unvalidated/OpenForward.jsp">Open Forward</a>
										</li>
										<li>
											<a href="<%=path%>/vulnerability/ssrf.jsp">SSRF</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li>
							<a href="<%=path%>/vulnerability/forum.jsp">Forum</a>
						</li>
							<% 
								if(session.getAttribute("isLoggedIn")!=null && session.getAttribute("isLoggedIn").equals("1"))
								{
									if(session.getAttribute("privilege")!=null && session.getAttribute("privilege").equals("admin"))
									{
										out.print("<li><a href='"+path+"/admin/admin.jsp'>Admin Panel</a></li>"); 
									}
									out.print("<li><a href='"+path+"/myprofile.jsp?id="+session.getAttribute("userid")+"'>My Profile</a></li>");
										out.print("<li><a href='"+path+"/Logout'>Logout</a></li>");
								}
								else
								{
									out.print("<li><a href='"+path+"/login.jsp'>LogIn</a></li>");
									out.print("<li><a href='"+path+"/Register.jsp'>Register</a></li>");
								}
							%>
						</li>
						<li>
							<a href="<%=path%>/about.jsp">About</a>
						</li>
						<li>
							<a href="<%=path%>/contact.jsp">Contact</a>
						</li>
						</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</nav>

		<!-- Main component for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1><%=siteTitle%></h1>