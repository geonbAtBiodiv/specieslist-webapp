<%--
  User: Natasha Carter
  Date: 14/03/13
  Time: 10:18 AM
  Provide access to all the editable information at a species list level
--%>

<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <title>Species lists | ${grailsApplication.config.skin.orgNameLong}</title>
    <r:require module="fancybox"/>
</head>
<body class="">
<div id="content" class="container-fluid">
    <header id="page-header">
        <div class="inner row-fluid">
            <div id="breadcrumb" class="span12">
                <ol class="breadcrumb">
                    <li><a href="http://www.ala.org.au">Home</a> <span class="divider"><i class="fa fa-arrow-right"></i></span></li>
                    <li class="current"><a class="current" href="${request.contextPath}/public/speciesLists">Species lists</a></li>
                </ol>
            </div>
        </div>
        <div class="row-fluid">
            <hgroup class="span8">
                <h1>Species lists</h1>
            </hgroup>
            <div class="span4 header-btns">
                <span class="pull-right">
                    <a class="btn btn-ala" title="Add Species List" href="${request.contextPath}/speciesList/upload">Upload a list</a>
                    <a class="btn btn-ala" title="My Lists" href="${request.contextPath}/speciesList/list">My Lists</a>
                    <a class="btn btn-ala" title="Rematch" href="${request.contextPath}/speciesList/rematch">Rematch All</a>
                </span>
            </div>
        </div><!--inner-->
    </header>
    <div class="inner">
        <g:if test="${flash.message}">
            <div class="message alert alert-info">${flash.message}</div>
        </g:if>

        <g:if test="${lists && total>0}">
            <a href="${g.createLink(action: 'updateListsWithUserIds')}" class="btn btn-primary">Update List user details (name & email address)</a>
            <p>
                Below is a listing of all species lists that can be administered.
            </p>
            <g:render template="/speciesList"/>
        </g:if>
        <g:else>
            <p>There are no Species Lists available</p>
        </g:else>

    </div>
</div>
</body>
</html>