class SectionsController < ApplicationController
  respond_to :html, :json

  def index
    render json: Section.all
  end

  def show
    render json: Section.find(params[:id])
  end
end
