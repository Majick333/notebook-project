class NotesControllerOG < ApplicationController
  before_action :authenticate_user!
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @notes = Note.find(params[:id])
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @notebook = Notebook.find(params[:notebook_id])
    @note = @notebook.notes.build(note_params)
    @note.save

    redirect_to notebooks_path
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note)
      .permit(:title, :content, :notebook_id)
      .merge(user_id: current_user.id)
    end
end
