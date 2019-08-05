class NotesController < ApplicationController
  def show
    render json: Note.find(params[:id])
  end

  def index
    render json: Note.all
  end

  def create
    note = Note.new(note_params)

    if note.save
      render json: note
    else
      render json: { status: 400, message: 'Bad Request' }
    end
  end

  private

  def note_params
    params.require(:note).permit(
      :subject_name,
      pages_attributes: [
        :image,
        :order
      ]
    )
  end
end
