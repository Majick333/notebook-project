class NotesController < ApplicationController
    before_action :authenticate_user!

    def index
        @notebook = Notebook.find(params[:notebook_id])
        @notes = @notebook.notes.all
    end

    def new
        @note = Note.new
    end

    def create
        @notebook = Notebook.find(params[:notebook_id])
        @note = @notebook.notes.build(note_params)
        @note.save

        redirect_to notebook_notes_path(@notebook,@note)
    end

    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        redirect_to notebooks_path(@notebook)
    end

    private

    def note_params
        params.require(:note)
        .permit(:name, :content, :notebook_id)
    end

end
