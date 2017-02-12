class VerseCommentariesController < ApplicationController
  before_action :set_verse_commentary, only: [:show, :edit, :update, :destroy]
  before_action :set_verse, only: [:new, :create]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  # GET /verse_commentaries
  # GET /verse_commentaries.json
  def index
    @verse_commentaries = VerseCommentary.all
  end

  # GET /verse_commentaries/1
  # GET /verse_commentaries/1.json
  def show
  end

  # GET /verse_commentaries/new
  def new
    @verse_commentary = @verse.build_verse_commentary
  end

  # GET /verse_commentaries/1/edit
  def edit
  end

  # POST /verse_commentaries
  # POST /verse_commentaries.json
  def create
    @verse_commentary = @verse.build_verse_commentary(verse_commentary_params)

    respond_to do |format|
      if @verse_commentary.save
        format.html { redirect_to @verse, notice: 'Verse commentary was successfully created.' }
        format.json { render :show, status: :created, location: @verse_commentary }
      else
        format.html { render :new }
        format.json { render json: @verse_commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verse_commentaries/1
  # PATCH/PUT /verse_commentaries/1.json
  def update
    respond_to do |format|
      if @verse_commentary.update(verse_commentary_params)
        format.html { redirect_to @verse, notice: 'Verse commentary was successfully updated.' }
        format.json { render :show, status: :ok, location: @verse_commentary }
      else
        format.html { render :edit }
        format.json { render json: @verse_commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verse_commentaries/1
  # DELETE /verse_commentaries/1.json
  def destroy
    @verse_commentary.destroy
    respond_to do |format|
      format.html { redirect_to verse_commentaries_url, notice: 'Verse commentary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verse_commentary
      @verse_commentary = VerseCommentary.find(params[:id])
    end

    def set_verse
      @verse =  Verse.find(params[:verse_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verse_commentary_params
      params.require(:verse_commentary).permit(:commentary, :verse_id)
    end
end
