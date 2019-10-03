class Request < ApplicationRecord
    has_rich_text :content
    belongs_to :user
    validates :title, presence: true
    validates :proposal_deadline, presence: true
    validates :budget_estimate, presence: true
end