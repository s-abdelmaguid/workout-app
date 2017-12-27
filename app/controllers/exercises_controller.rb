class ExercisesController < ApplicationController
  def index
  end
  def
    @exercise  = current_user.exercises.new 
  end
end
