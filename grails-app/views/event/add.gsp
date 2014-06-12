<%@ page import="com.mycompany.domain.Participant" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="main"/>
    <title>Add Event</title>
</head>

<body>

<div class="row">
    <div class="col-lg-12">
        <h1>Events
            <small><span class="message">${flash.message}</span></small>
        </h1>
    </div>
</div>


<div class="row">
    <div class="col-lg-6">
        <g:form action="addEvent" controller="event">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Add Event</h3>
                </div>

                <div class="panel-body">
                    <div class="form-group">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <input type="text" name="eventName" placeholder="Enter event name">
                                <input type="text" name="totalCost" placeholder="Enter total cost">
                            </li>
                            <g:each in="${participants}" var="participant">
                                <li class="list-group-item">
                                    <input type="text" name="name" value="${participant.name}" readonly="readonly">
                                    <input name="spend" type="text" placeholder="Enter spent money">
                                    <input name="share" type="text" placeholder="Enter Individual share">
                                    <input type="checkbox" name="isParticipated">
                                </li>
                            </g:each>
                        </ul>
                    </div>
                    <input type="submit" class="btn btn-success" value="Create"/>
                    <span class="pull-right"
                          ng-if="createTodo.$dirty && createTodo.$invalid">All fields are mandatory</span>
                </div>
            </div>
        </g:form>
    </div>

    <div class="col-lg-6">
        <ul class="list-group">
            <li class="list-group-item">
                <g:each in="${events}" var="event">
                    <ul>
                        <span>${event.name}</span>
                        <g:each in="${event.eventRecord}" var="record">
                            <span>${Participant.get(record.key).name}:${record.value}</span>
                        </g:each>
                    </ul>
                </g:each>
            </li>
        </ul>
    </div>
</div>

<!-- /.row -->

</body>
</html>