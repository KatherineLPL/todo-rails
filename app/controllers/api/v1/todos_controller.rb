class Api::V1::TodosController < ApplicationController

    def index
    todos = Todo.all
    json_with todos
  end

  def create
    todo = manage_todo_service(todo_params).call
    json_with todo
  end

  def show
    todo = Todo.find(params[:id])
    json_with todo
  end 

  private

  def todo_params
    @todo_params ||= TodoDecanter.decant(params[:todo])
  end

  def manage_todo_service(args = {})
    ManageTodos.new(args)
  end
end