class Todo < ApplicationRecord
  validates :name, :comment, :quote, presence: true
  belongs_to :user
end
