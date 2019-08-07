class CommentsController < ApplicationController
  def create
    note = Note.find(params[:note_id])
    create_params = comment_params
    create_params[:user_name] = 'ななしさん' if create_params[:user_name].blank?
    comment = note.comments.new(create_params)

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
