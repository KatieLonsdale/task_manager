# app/controllers/tasks_controller.rb

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    require 'pry'; binding.pry
    task = Task.new({
      title: params[:task][:title],
      description: params[:task][:description]
    })
    require 'pry'; binding.pry
    task.save
    require 'pry'; binding.pry
    redirect_to '/tasks'
  end

  def show
    
  end
end