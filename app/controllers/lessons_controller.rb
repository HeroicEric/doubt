class LessonsController < ApplicationController
  respond_to :html, :json

  def index
    render json: Lesson.all
  end

  def show
    render json: Lesson.find(params[:id])
  end
end
