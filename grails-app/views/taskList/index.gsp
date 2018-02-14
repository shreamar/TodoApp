<%@ page import="todoapp.TaskList" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="_page">
    <title><g:if test="${listOfTasks}">Create New Task</g:if><g:else>Completed Tasks</g:else></title>
</head>

<body>
<div class="container">

    <%
        List<TaskList> Tasks = todoapp.TaskList.list()
    %>

    <g:if test="${listOfTasks}">
        <h2>My Tasks</h2>
        <div class="tab-content">
            <g:form class="form-group" controller="taskList" action="save" style="margin-bottom: 20px">
                <input class="form-control mr-sm-2" type="search" placeholder="My To-do Task" aria-label="Task"
                       name="title">
                <button class="btn btn-outline-success my-2 my-sm-0 btn-success" type="submit">Add Task</button>
            </g:form>
        </div>
        <%Tasks = listOfTasks%>
    </g:if>
    <g:else>
        <h2>Completed Tasks</h2>
        <%Tasks = completedTask%>
    </g:else>


    <div class="table-responsive">
        <table class="table-striped table">
            <th class="alert-success">Date Created</th>
            <th class="alert-success">Task</th>
            <g:if test="${listOfTasks}"><th class="alert-success">Check</th></g:if>
            <g:if test="${completedTask}"><th class="alert-success"> Date Completed</th> </g:if>

            <g:each in="${Tasks.reverse()}" var="tasks">
                <g:if test="${(!tasks.isCompleted && listOfTasks) || (tasks.isCompleted) && completedTask}">
                    <tr>
                        <td>${tasks.dateCreated}</td>
                        <td>${tasks.title}</td>

                        <g:if test="${listOfTasks}">
                            <td><g:form controller="TaskList" action="checkTaskComplete" id="${tasks.id}">
                                <div class="form-check">
                                <g:hiddenField name="isCompleted" value="true"/>
                                <button href="" type="submit" class="btn btn-primary">Done</button>
                            </g:form>
                            </div>
                            </td>
                        </g:if>

                        <g:if test="${completedTask}">
                            <td>${tasks.dateCompleted}</td>
                        </g:if>
                    </tr>
                </g:if>
            </g:each>
        </table>
    </div>
</div>

</body>
</html>