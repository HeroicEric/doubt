class SectionsController < ApplicationController
  respond_to :html, :json

  def index
    render json: Section.all
  end

  def update
    section = Section.find(params[:id])

    if section.update(section_params)
      render json: section
    else
      raise Fail
    end
  end

  private
  def section_params
    params.require(:section).permit(:title, :description, :lession_id)
  end
end
