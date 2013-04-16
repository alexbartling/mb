class Reply < ActiveRecord::Base
  attr_accessible :content, :date, :post_id, :user_id

  belongs_to :user
  belongs_to :post

end
