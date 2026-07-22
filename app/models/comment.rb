class Comment < ApplicationRecord
  belongs_to :blog
  belongs_to :user, optional: true

  validates :author, presence: true
  validates :body, presence: true

  def owned_by?(user)
    user.present? && self.user_id == user.id
  end
end