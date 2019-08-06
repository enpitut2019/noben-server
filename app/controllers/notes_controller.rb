class NotesController < ApplicationController
  def show
    render json: Note.find(params[:id])
  end

  def index
    notes = Note.all.includes(:pages, :comments, :tags)

    if params[:search_words].present?
      search_words = params[:search_words].gsub(/\s+/, '').split(',')
      notes = notes.where(tags: { name: search_words }).or(notes.where(subject_name: search_words))
    end

    render json: notes
  end

  def create
    note = Note.new(note_params)

    if note.save
      render json: note
    else
      handle_400 note
    end
  end

  private

  def note_params
    if params[:tags].present?
      params[:note][:tags_attributes] = params[:tags].gsub(/\s+/, '').split(',').map do |name|
        {
          name: name
        }
      end
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
