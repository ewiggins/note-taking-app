class NotesController < ApplicationController
  def index
    @note = Note.all
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def show
  end

  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note Created Sucessfully.' }
        format.json { render :index, status: :created, location: @note}
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :index, status: :ok, location: @note}
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private

  def note_params
      params.require(:note).permit(:title, :body)
  end
end
