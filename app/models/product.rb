class Product < ApplicationRecord
    has_rich_text :content
    include ImageUploader[:image]
    belongs_to :user
end
