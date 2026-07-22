class Blog < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  def owned_by?(user)
    user.present? && self.user_id == user.id
  end
end