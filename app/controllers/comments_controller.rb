class CommentsController < ApplicationController
  def create
    note = Note.find(params[:note_id])
    comment = note.comments.new(comment_params)

    if comment.save
      render json: comment
    else
      render status:400, json: { status: 400, message: 'Bad Request' }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(
      :content
    )
  end
end
