class LessonsController < ApplicationController
  respond_to :html, :json

  def index
    render json: Lesson.all
  end

  def show
    lesson = Lesson.find(params[:id])
    render json: lesson,
      include: [:sections, :checkpoints, :checkpoint_completions]
  end

  def update
    lesson = Lesson.find(params[:id])

    if lesson.update(lesson_params)
      render json: lesson
    else
      raise Fail
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title, :description)
  end
end
