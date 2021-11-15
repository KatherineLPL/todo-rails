class Todo < ApplicationRecord
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    scope :in_order_by_creation, -> { order(created_at: :asc) }
end
