class CheckpointCompletionsController < ApplicationController
  respond_to :html, :json

  def show
    checkpoint_completion = CheckpointCompletion.find(params[:id])
    render json: checkpoint_completion
  end

  def create
    checkpoint_completion = CheckpointCompletion.new(
      checkpoint_completion_params)
    checkpoint_completion.user = current_user

    if checkpoint_completion.save
      render json: checkpoint_completion
    else
      render status: 422
    end
  end

  def destroy
    CheckpointCompletion.find(params[:id]).destroy
    render nothing: true
  end

  private
  def checkpoint_completion_params
    params.require(:checkpoint_completion).permit(:checkpoint_id)
  end
end
