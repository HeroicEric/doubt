class CheckpointsController < ApplicationController
  respond_to :html, :json

  def index
    render json: Checkpoint.all
  end
end
