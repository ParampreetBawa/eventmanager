<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="main"/>
    <title>Declare Participant</title>
</head>

<body>


<div class="row">
    <div class="col-lg-12">
        <h1>Participants
            <small><span class="message">${flash.message}</span></small>
        </h1>
    </div>
</div>


<div class="row">
    <div class="col-lg-6">
        <g:form action="addParticipant" controller="participant">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Add Participant</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <input name="name" class="form-control" placeholder="Enter participant name">
                    </div>
                    <input type="submit" class="btn btn-success" value="Create"/>
                    <span class="pull-right" ng-if="createTodo.$dirty && createTodo.$invalid"> All fields are mandatory</span>
                </div>
            </div>
        </g:form>
    </div>
    <div class="col-lg-6">
        <ul class="list-group">
            <li class="list-group-item">
                <g:each in="${participants}" var="participant">
                    <ul><span>${participant.name}</span></ul>
                </g:each>
            </li>
        </ul>
    </div>
</div>

<!-- /.row -->

</body>
</html>