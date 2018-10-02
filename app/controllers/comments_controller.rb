class CommentsController < ApplicationController

  skip_before_action :authenticate, only: [:create]

  def create
    render json: Comment.create(comment_params)
  end

  private

  def comment_params
    params.permit(:user_id, :race_id, :comment, :username)
  end

end
