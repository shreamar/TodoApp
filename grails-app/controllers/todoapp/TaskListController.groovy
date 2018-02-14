package todoapp

class TaskListController {

    def index() {
        List<TaskList> listOfTasks = TaskList.list()
        render view: "index", model: [listOfTasks:listOfTasks]
    }

    def save(TaskList task){
        task.dateCreated = new Date()
        if(task.validate()){
            task.save(flush: true, failOrError:true)
        }
        redirect action: "index"
    }

    def checkTaskComplete(TaskList task){
        task.dateCompleted = new Date()
        if(task.validate()){
            task.save(flush: true, failOrError:true)
        }
        redirect action: "index"
    }

    def displayCompletedTasks(){
        List<TaskList> completedTask = TaskList.list()
        render view: "index", model: [completedTask:completedTask]
    }
}
