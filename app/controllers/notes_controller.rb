class NotesController < ApplicationController
  def show
    render json: Note.find(params[:id])
  end

  def index
    tags = params[:tags].gsub(/\s+/, "").split(',')
    render json: Note.all.includes(:pages, :comments, :tags).where(tags: { name: tags })
  end

  def create
    note = Note.new(note_params)

    if note.save
      render json: note
    else
      render status: 400, json: { status: 400, message: 'Bad Request' }
    end
  end

  private

  def note_params
    params[:note][:tags_attributes] = params[:tags].gsub(/\s+/, "").split(',').map do |name|
      {
        name: name
      }
    end

    params.require(:note).permit(
      :subject_name,
      pages_attributes: [
        :image,
        :order
      ],
      tags_attributes: [
        :name
      ]
    )
  end
end
