class CheckpointsController < ApplicationController
  respond_to :html, :json

  def index
    render json: Checkpoint.all
  end

  def update
    checkpoint = Checkpoint.find(params[:id])

    if checkpoint.update(checkpoint_params)
      render json: checkpoint
    else
      raise Fail
    end
  end

  private
  def checkpoint_params
    params.require(:checkpoint).permit(:body, :section_id, :title)
  end
end
