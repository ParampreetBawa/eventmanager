<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="main"/>
    <title>Bank Status</title>
</head>

<body>


<div class="row">
    <div class="col-lg-12">
        <h1>Participants
            <small>A Blank Slate</small>
        </h1>
    </div>
</div>


<div class="row">
    <div class="col-lg-6">
        <ul class="list-group">
            <g:each in="${status.keySet()}" var="participantId">
            <li class="list-group-item">
               <span>${com.mycompany.domain.Participant.get(participantId).name}</span>
                <span>${status.get(participantId)}</span>
            </li>
            </g:each>
        </ul>
    </div>
</div>

<!-- /.row -->

</body>
</html>