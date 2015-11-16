<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="author" content="Chhorn Elit">
<meta lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS Library -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/lib/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/lib/font-awesome-4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/lib/bootstrap-select.min.css">
<!-- End CSS Library -->

<!-- Custom StyleSheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/index.css">
<!-- End Custom StyleSheet -->
</head>
<body>
	<div id="main" class="container-fluid">
		<div class="row col-sm-11 center-block">
			<div class="col-sm-12 card form-horizontal">
				<h1>
					${page} a Student <a class="btn pull-right"
						href="${pageContext.request.contextPath}/logout"><i
						class="fa fa-sign-out fa-2x"></i></a> <a class="btn pull-right"
						href="${pageContext.request.contextPath}/"><i
						class="fa fa-home fa-2x"></i></a> <a class="btn pull-right"
						href="${pageContext.request.contextPath}/show/${currentUser.id }">Hi,
						${currentUser.username }</a>
				</h1>
				<hr>
				<mvc:form
					action="${pageContext.request.contextPath}/${fn:toLowerCase(page) }"
					method="POST">
					<div class="col-sm-12 ">
						<div class="col-sm-8 center-block" style="margin-bottom: 40px;">
							<c:if test='${page == "Update"}'>
								<input type="hidden" class="form-control" maxlength="100"
									name="id" value="${usrObj.id}">
							</c:if>
							<div class="form-group">
								<label class="col-sm-3">Username:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="username"
										placeholder="Enter Username" maxlength="20"
										value='${usrObj.username}' ${readonly } required autofocus>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3">Password: </label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="password"
										placeholder="Enter Password" maxlength="20"
										value='${usrObj.password}' ${readonly } required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3">Email:</label>
								<div class="col-sm-9">
									<input type="email" class="form-control" name="email"
										placeholder="Enter name@domain.com" maxlength="25"
										pattern='[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'
										value='${usrObj.email}' ${readonly } required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3">Role: </label>
								<div class="col-sm-9">
									<select class="form-control" name="role" ${readonly } required>
										<option value="">-Select Role-</option>
										<option value="ROLE_ADMIN"
											${usrObj.role=='ROLE_ADMIN'?'selected':''}>Admin</option>
										<option value="ROLE_AUTHOR"
											${usrObj.role=='ROLE_AUTHOR'?'selected':''}>Author</option>
										<option value="ROLE_USER"
											${usrObj.role=='ROLE_USER'?'selected':''}>User</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3">Enable: </label>
								<div class="col-sm-9">
									<label class="radio-inline"> <input type="radio"
										name="enable" value="true" ${usrObj.enable?'checked':''}
										${disabled }>True
									</label> <label class="radio-inline"> <input type="radio"
										name="enable" value="false" ${usrObj.enable?'':'checked'}
										${disabled }>False
									</label>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3">Birth Date: </label>
								<div class="col-sm-9">
									<input type="date" class="form-control" name="birthdate"
										placeholder="Enter Birth Date" value='${usrObj.birthdate}'
										${readonly } required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3">Register Date: </label>
								<div class="col-sm-9">
									<input type="date" class="form-control" name="registerdate"
										placeholder="Enter Register Date"
										value='${usrObj.registerdate}' ${readonly } required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3">Image: </label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="image"
										placeholder="Enter Image" value='${usrObj.image}' ${readonly }
										required>
								</div>
							</div>
						</div>
						<div class="col-sm-6 center-block">
							<c:choose>
								<c:when test='${page == "Show"}'>
									<a
										href="${pageContext.request.contextPath}/update/${usrObj.id}"
										class="btn btn-primary" style="width: 200px;"> <i
										class="fa fa-pencil"></i>&nbsp;&nbsp;Edit
									</a>
									<a
										href="${pageContext.request.contextPath}/delete/${usrObj.id}"
										class="btn btn-primary pull-right" style="width: 200px;">
										<i class="fa fa-trash"></i>&nbsp;&nbsp;Delete
									</a>
								</c:when>
								<c:otherwise>
									<button type="submit" id="btnAdd" class="btn btn-primary"
										style="width: 200px;">
										<i class="fa fa-plus-circle"></i>&nbsp;&nbsp;${page}
									</button>
									<button type="reset" id="btnClear"
										class="btn btn-primary pull-right" style="width: 200px;">
										<i class="fa fa-eraser"></i>&nbsp;&nbsp;Reset
									</button>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</mvc:form>
			</div>
		</div>
	</div>
</body>
</html>