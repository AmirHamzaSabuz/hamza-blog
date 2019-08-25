class Article < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :description, presence: true, length: { minimum: 10, maximum: 10000 }
    validates :user_id, presence: true
    has_many :comments, dependent: :destroy
      # dependent: :destroy means the comments related
      # to the specific post in mention get deleted if the post does.
end

