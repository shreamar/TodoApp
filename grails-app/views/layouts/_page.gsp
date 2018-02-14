<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!--bootstrap CDN link-->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <title><g:layoutTitle default="Create New Task"/></title>

    <g:layoutHead/>
</head>

<body>
<div class="header"><!--navigation bar-->
    <nav class="navbar navbar-inverse" style="margin-bottom: 20px">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="index" class="navbar-brand" style="color: #117a8b">Tasks</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainMenuItems">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse" id="mainMenuItems">
                <ul class="nav navbar-nav">
                    <li><g:link controller="taskList" action="index">Create New Task</g:link></li>
                    <li><g:link controller="taskList" action="displayCompletedTasks">Completed Tasks</g:link></li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<!--navigation bar-->

<g:layoutBody/>

<!--jquery javascript-->
<asset:javascript src="jquery-2.2.0.min.js"/>
<asset:javascript src="bootstrap.js"/>
</body>
</html>