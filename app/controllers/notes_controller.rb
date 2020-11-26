class NotesController < ApplicationController
    before_action :authenticate_user!

    def index
        @category = Category.find(params[:category_id])
        @notebook = Notebook.find(params[:notebook_id])
        @notes = @notebook.notes.all
    end

    def new
        @note = Note.new
    end

    def create
        @category = Category.find(params[:category_id])
        @notebook = Notebook.find(params[:notebook_id])
        @note = @notebook.notes.build(note_params)
        @note.save

        redirect_to category_notebook_notes_path(@category, @notebook)
    end

    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        redirect_to category_notebooks_path(@category, @notebook)
    end

    private

    def note_params
        params.require(:note)
        .permit(:name, :content, :notebook_id, :category_id)
        
    end

end
