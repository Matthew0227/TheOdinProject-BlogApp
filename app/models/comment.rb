class Comment < ApplicationRecord
  belongs_to :blog

  validates :author, presence: true
  validates :body, presence: true
end