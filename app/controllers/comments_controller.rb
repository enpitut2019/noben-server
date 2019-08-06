class CommentsController < ApplicationController
  def create
    note = Note.find(params[:note_id])
    comment = note.comments.new(comment_params)

    if comment.save
      render json: comment
    else
      handle_400 comment
    end
  end

  private

  def comment_params
    params.require(:comment).permit(
      :content,
      :user_name
    )
  end
end
