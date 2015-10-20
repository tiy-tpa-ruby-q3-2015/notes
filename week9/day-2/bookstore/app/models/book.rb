class Book < ActiveRecord::Base
  validates :title, presence: true
  scope :public_books,  lambda { where(private: false) }
  scope :private_books, lambda { where(private: true) }
  scope :in_order,      lambda { order("title") }

  attachment :cover_page

  def long?
    self.page_count.to_i >= 100
  end

  def missing_page_count?
    self.page_count.nil?
  end

  def self.search(title)
    where("title like ?", "%#{title}%")
  end

  def self.recent(age)
    where("date_published > ?", age)
  end

  def self.visible_by(user)
    where("private = ? OR (private = ? AND created_by = ?)", false, true, user.id)
  end
end
