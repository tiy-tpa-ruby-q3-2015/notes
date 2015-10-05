require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "books without a title are invalid" do
    book = Book.new

    refute book.valid?
  end

  test "books must have a title to be valid" do
    book = Book.new(title: "Gone with the wind")

    assert book.valid?, "Books without a title should not be valid"
  end

  test "Books who's page count is 100 or more should be considered long books" do
    book = Book.new(page_count: 100)

    assert book.long?, "A 100 page book should be a long book"
  end

  test "Books who's page count is nill are NOT long books" do
    book = Book.new(page_count: nil)

    refute book.long?, "A book with nil pages is not long"
  end

  test "Book's can tell if their page count is missing" do
    book = Book.new(page_count: nil)

    assert book.missing_page_count?, "A book with nil pages tells us that missing_page_count? is true"
  end

  test "Books' with a page count are not missing_page_count" do
    book = Book.new(page_count: 500)

    refute book.missing_page_count?, "A book with pages shouldn't be missing_page_count"
  end
end
