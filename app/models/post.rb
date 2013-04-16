class Post < ActiveRecord::Base
  attr_accessible :content, :date, :title, :user_id

  validates :title, :presence => true
  validates :content, :presence => true

  has_many :replies
  belongs_to :user
end
