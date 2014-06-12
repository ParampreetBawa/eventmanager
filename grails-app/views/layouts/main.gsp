<!DOCTYPE html>
<html lang="en" data-ng-app="todo" id="ng-app" debug="true">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Event Manager - <g:layoutTitle/></title>

    <!-- Bootstrap core CSS -->
    <asset:stylesheet src="bootstrap.css"/>

    <!-- Add custom CSS here -->
    <asset:stylesheet src="sb-admin.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <!-- JavaScript -->
    <asset:javascript src="jquery-1.10.2.js"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
</head>

<body>

<div id="wrapper">

    <!-- Sidebar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Event Manager</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li class="active">
                    <g:link controller="participant" action="declare">
                        <i class="fa fa-check-square-o"></i> Declare Participants
                    </g:link>
                </li>
                <li>
                    <g:link controller="event" action="add">
                        <i class="fa fa-tasks"></i> Add Event
                    </g:link>
                </li>
                <li>
                    <g:link controller="bank" action="status">
                        <i class="fa fa-tasks"></i> Bank Status
                    </g:link>
                </li>
            </ul>

        </div><!-- /.navbar-collapse -->
    </nav>

    <g:layoutBody/>

</div><!-- /#wrapper -->

</body>
</html>
