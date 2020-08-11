class TodosController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @todo = Todo.new
    @todos = Todo.order('created_at ASC')
    todos = @todos 
    @mytodos = current_user.todos
  end

  def create
    Todo.create(todo_params)
    redirect_to :root
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to :root
  end

  private
  def todo_params
    params.require(:todo).permit(:name, :comment, :quote).merge(user_id: current_user.id)
  end

end