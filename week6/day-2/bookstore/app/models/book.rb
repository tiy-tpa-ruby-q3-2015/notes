class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author_name, presence: true
end
