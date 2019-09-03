class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def create 
    resources :students, only: :index
  resources :students, only: [:index, :new, :create]
  end

end
