class NotesController < ApplicationController
  def index
    @note = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(params[:note])
    if @note.save
      redirect_to @note
    else
      render "new"
    end
  end
end
