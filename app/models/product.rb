class Product < ApplicationRecord
    has_rich_text :explanation
    include ImageUploader[:image]
    belongs_to :user
end
