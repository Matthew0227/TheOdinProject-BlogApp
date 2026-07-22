class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :blogs, dependent: :destroy
  has_many :comments, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :username,
            presence: true,
            uniqueness: true,
            length: { minimum: 3, maximum: 20 }
end
