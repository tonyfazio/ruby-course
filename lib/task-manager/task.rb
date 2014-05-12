require 'date'
class TM::Task

  attr_reader :project_id, :creation_date
  attr_accessor :description, :priority_number, :status, :due_date, :overdue

  def initialize(name, task_id, project_id, description, priority_number, status="incomplete",due_date)
    @name = name
    @task_id = task_id
    @project_id = project_id
    @description = description
    @priority_number = priority_number
    @status = status
    @creation_date = Date.today
    @due_date = Date.parse(due_date)
    @overdue = "current"
  end


end
