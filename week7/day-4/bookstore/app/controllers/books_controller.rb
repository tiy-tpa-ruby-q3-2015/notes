class BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :back_to_the_books
  rescue_from Pundit::NotAuthorizedError, with: :leet_haxor

  # GET /books
  # GET /books.json
  def index
    @last_time = session[:user_id]

    session[:time] = Time.now.to_s

    @books = Book.visible_by(current_user).in_order
  end

  def public
    @books = Book.recent(400.years.ago).public_books.in_order

    render :index
  end

  def search
    @search = params[:q]
    @books  = Book.search(@search).in_order

    render :index
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])
  end

  # GET /books/new
  def new
    @book = Book.new

    authorize(@book)
  end

  # GET /books/1/edit
  def edit
    @book = Book.visible_by(current_user).find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)
    @book.created_by = current_user.id

    authorize(@book)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    @book = Book.visible_by(current_user).find(params[:id])

    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Nice edit!' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.visible_by(current_user).find(params[:id])

    authorize(@book)

    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def book_params
    params.require(:book).permit(:title, :date_published, :author_id, :page_count, :private)
  end

  def back_to_the_books
    redirect_to books_path
  end

  def leet_haxor
    render text: "Go away you hacker!"
  end
end
