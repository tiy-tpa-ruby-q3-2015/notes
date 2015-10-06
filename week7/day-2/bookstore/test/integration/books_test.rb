require 'test_helper'
require 'minitest/mock'

class BooksTest < ActionDispatch::IntegrationTest
  test "long books show in green" do
    Book.create(title: "Rails is awesome", page_count: 500, date_published: Date.today)

    get books_path

    assert_response :success

    assert_select "tr.success", 1
    # assert response.body.include? %{<tr class="book success">}
  end

  test "When editing a book, show it's title" do
    book = Book.create(title: "The Iron Yard Story", page_count: 1_000_000, date_published: Date.today)

    get    edit_book_path(book)

    assert_response :success
    assert_select "input#book_title"
  end
end
