class Customer < ActiveRecord::Base
  belongs_to :company
  has_many :comments # 追加

  validates :family_name,
    presence: true, length: {maximum: 20 }
  validates :given_name,
    presence: true, length: {maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
    presence: true, format: { with: VALID_EMAIL_REGEX}

  def full_name(keisho)
    full_name = family_name + given_name + keisho
    return full_name
  end
end
