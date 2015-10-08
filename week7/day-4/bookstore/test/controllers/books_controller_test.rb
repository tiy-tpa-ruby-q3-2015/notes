require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  include FactoryGirl::Syntax::Methods

  setup do
    @book = FactoryGirl.create(:book)
  end

  test "should get index" do
    get :index

    assert_response :success

    # Make sure that the @books is not nil, that we assigned it something...
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:book)
  end

  test "should create book" do
    count_before = Book.count
    post :create, book: { date_published: @book.date_published, title: @book.title }
    count_after = Book.count

    assert_equal count_before + 1, count_after

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { date_published: @book.date_published, title: @book.title }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
