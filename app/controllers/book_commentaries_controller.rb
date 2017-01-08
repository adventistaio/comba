class BookCommentariesController < ApplicationController
  before_action :set_book_commentary, only: [:show, :edit, :update, :destroy]

  # GET /book_commentaries
  # GET /book_commentaries.json
  def index
    @book_commentaries = BookCommentary.all
  end

  # GET /book_commentaries/1
  # GET /book_commentaries/1.json
  def show
  end

  # GET /book_commentaries/new
  def new
    @book_commentary = BookCommentary.new
  end

  # GET /book_commentaries/1/edit
  def edit
  end

  # POST /book_commentaries
  # POST /book_commentaries.json
  def create
    @book_commentary = BookCommentary.new(book_commentary_params)

    respond_to do |format|
      if @book_commentary.save
        format.html { redirect_to @book_commentary.book, notice: 'Book commentary was successfully created.' }
        format.json { render :show, status: :created, location: @book_commentary }
      else
        format.html { render :new }
        format.json { render json: @book_commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_commentaries/1
  # PATCH/PUT /book_commentaries/1.json
  def update
    respond_to do |format|
      if @book_commentary.update(book_commentary_params)
        format.html { redirect_to @book_commentary.book, notice: 'Book commentary was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_commentary }
      else
        format.html { render :edit }
        format.json { render json: @book_commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_commentaries/1
  # DELETE /book_commentaries/1.json
  def destroy
    @book_commentary.destroy
    respond_to do |format|
      format.html { redirect_to book_commentaries_url, notice: 'Book commentary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_commentary
      @book_commentary = BookCommentary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_commentary_params
      params.require(:book_commentary).permit(:commentary, :book_id)
    end
end
