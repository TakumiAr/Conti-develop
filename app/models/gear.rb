class Gear < ApplicationRecord
    include ImageUploader[:image]
    belongs_to :user
    validates :name, presence: true
end
