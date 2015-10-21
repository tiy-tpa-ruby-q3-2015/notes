class Topic < ActiveRecord::Base
  has_many :interests, dependent: :destroy
  belongs_to :user

  accepts_nested_attributes_for :interests
end
