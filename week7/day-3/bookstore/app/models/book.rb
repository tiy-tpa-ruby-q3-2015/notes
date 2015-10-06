class Book < ActiveRecord::Base
  validates :title, presence: true

  def long?
    self.page_count.to_i >= 100
  end

  def missing_page_count?
    self.page_count.nil?
  end
end
