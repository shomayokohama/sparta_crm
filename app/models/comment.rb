class Comment < ActiveRecord::Base
  validates :body,        presence: true
  validates :customer_id, presence: true
  validates :image_url,   presence: true

  belongs_to :customer
  belongs_to :user_id
end
