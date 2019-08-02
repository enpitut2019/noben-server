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
    end
  end

  private

  def note_params
    params.require(:note).permit(:image_url)
  end
end
