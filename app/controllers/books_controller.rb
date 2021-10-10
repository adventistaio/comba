class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show; end

  def edit; end

  def update
    if @book.update book_params
      redirect_to @book, notice: 'Se actualizó correctamente el comentario'
    else
      render :edit, alert: 'Ocurrio un problema al guardar, intenta de nuevo.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:name, :section_id, :category_id, :comment, :descriptive_image)
    end
end
