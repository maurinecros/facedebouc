class Article < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :content, presence: true, length: { minimum: 10 }
    validates :image, presence: true
    default_scope -> {order(created_at: :desc)}
  end