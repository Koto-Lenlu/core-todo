class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todos = Todo.order('created_at ASC')
  end

  def create
    Todo.create(todo_params)
    redirect_to :root
  end

  private
  def todo_params
    params.permit(:name, :comment, :quote)
  end
  

end
