class Book < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :author

  def long?
    page_count.to_i > 99
  end

  def missing_page_count?
    page_count.nil?
  end
end
