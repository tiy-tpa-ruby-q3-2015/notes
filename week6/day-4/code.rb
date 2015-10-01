
# link_to "New Book", "/books", method: "get", whatever: "glyphicons-plus", id: "new_book"


# <a href="/books">New Book</a>

def link_to(text, href, options = {})
  if options[:class]
    class_html = %{class="#{options[:class]}"}
  end

  if options[:id]
    id_html = %{id="#{options[:id]}"}
  end

  %{<a #{class_html} #{id_html} href="#{href}">#{text}</a>}
end

puts link_to "New Book", "/books", class: "important", id: "new_book_id"

puts link_to "Show Book", "/books/1"

puts link_to "Show Book", "/books/1", class: "mega-important"
