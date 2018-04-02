class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @notes = Note.new
  end
end
