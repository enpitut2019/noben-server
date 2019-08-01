class NotesController < ApplicationController
  def show
    render json: Note.find(params[:id])
  end
  def index
    render json: Note.all
  end
end
