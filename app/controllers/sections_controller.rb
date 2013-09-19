class SectionsController < ApplicationController
  respond_to :html, :json

  def index
    render json: Section.all
  end
end
