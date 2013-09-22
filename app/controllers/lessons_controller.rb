class LessonsController < ApplicationController
  respond_to :html, :json

  def index
    render json: Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    render json: @lesson,
      include: [:sections, :checkpoints, :checkpoint_completions]
  end
end
