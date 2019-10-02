class Product < ApplicationRecord
    has_rich_text :content
    belongs_to :user
    validates :song_title, presence: true
    validates :title, presence: true
    validates :instrument, presence: true
    validates :content, presence: true
end