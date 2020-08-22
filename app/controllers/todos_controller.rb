class TodosController < ApplicationController
  before_action :authenticate_user!
  # before_action :move_to_index, only: [:create, :update, :destroy]
  def index
    @todo = Todo.new
    @todos = current_user.todos.order("created_at ASC")
  end

  def create
    Todo.create(todo_params)
    redirect_to :root
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.update(todo_params) 
    redirect_to :root, notice: "更新しました"
  end  

  def pomodoro
    @todo = Todo.find(params[:id])
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

  # def move_to_index
  #   redirect_to :root
  # end
end