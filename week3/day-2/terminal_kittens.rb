require "base64"
require "open-uri"

def url_to_terminal_image(url)
  raw_image = open(url).read
  encoded_image = Base64.encode64(raw_image).gsub(/[\n\r]/,'')
  "\033]1337;File=size=#{raw_image.length};inline=1:#{encoded_image}\a\n"
end


class Kitty
  include Enumerable

  def each
    10.times do
      width  = 200 + rand(200)
      height = 200 + rand(300)
      url    = "https://placekitten.com/g/#{width}/#{height}"
      image  = url_to_terminal_image(url)

      yield image
    end
  end
end

kitty = Kitty.new

kitty.each do |image|
  puts image
end
