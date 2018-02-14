package todoapp

class TaskList {
    String title
    Date dateCreated
    Date dateCompleted
    boolean isCompleted = false

    static constraints = {
        dateCompleted nullable: true
    }
}
