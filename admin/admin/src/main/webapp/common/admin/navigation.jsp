<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div id="sidebar" class="sidebar responsive gui-nav">
	<ul class="nav nav-list">
		<c:forEach items="${menu }" var="levelOneMenu">
			<c:choose>
				<c:when test="${levelOneMenu.navName==menuName }">
					<li class="active">
				</c:when>
				<c:otherwise>
					<li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when
					test="${levelOneMenu.children != null&& fn:length(levelOneMenu.children)>0 }">
					<a href="${levelOneMenu.linkUrl }" class="dropdown-toggle">
				</c:when>
				<c:otherwise>
					<a href="${levelOneMenu.linkUrl }">
				</c:otherwise>
			</c:choose>
			<i class="menu-icon fa ${levelOneMenu.iconClass }"></i>
			<span class="menu-text"> ${levelOneMenu.title } </span>
			<c:if
				test="${levelOneMenu.children != null&& fn:length(levelOneMenu.children)>0 }">
				<b class="arrow fa fa-angle-down"></b>
			</c:if>
			</a>
			<c:if
				test="${levelOneMenu.children != null && fn:length(levelOneMenu.children)>0 }">
				<ul class="submenu">
					<c:forEach items="${levelOneMenu.children }" var="levelTwoMenu">
						<c:choose>
							<c:when test="${levelTwoMenu.navName==menuName }">
								<li class="active">
							</c:when>
							<c:otherwise>
								<li>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when
								test="${levelTwoMenu.children != null&& fn:length(levelTwoMenu.children)>0 }">
								<a href="${levelTwoMenu.linkUrl }" class="dropdown-toggle">
							</c:when>
							<c:otherwise>
								<a href="${levelTwoMenu.linkUrl }">
							</c:otherwise>
						</c:choose>
						<i class="menu-icon fa fa-caret-right"></i>
										${levelTwoMenu.title }
										<c:if
							test="${levelTwoMenu.children != null&& fn:length(levelTwoMenu.children)>0 }">
							<b class="arrow fa fa-angle-down"></b>
						</c:if>
						</a>
						<b class="arrow"></b>
						<c:if
							test="${levelTwoMenu.children != null && fn:length(levelTwoMenu.children)>0}">
							<ul class="submenu">
								<c:forEach items="${levelTwoMenu.children }"
									var="levelThreeMenu">
									<c:choose>
										<c:when test="${levelThreeMenu.navName==menuName }">
											<li class="active">
										</c:when>
										<c:otherwise>
											<li>
										</c:otherwise>
									</c:choose>
									<a href="${levelThreeMenu.linkUrl}"> <i
										class="menu-icon fa fa-caret-right"></i>
										${levelThreeMenu.title}
									</a>
									<b class="arrow"></b>
									</li>
								</c:forEach>
							</ul>
						</c:if>
						</li>
					</c:forEach>
				</ul>
			</c:if>
			</li>
		</c:forEach>
	</ul>
	<!-- /.nav-list -->
</div>