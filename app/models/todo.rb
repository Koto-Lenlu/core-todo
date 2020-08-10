class Todo < ApplicationRecord
  validates :name, :quote, presence: true
  belongs_to :user
end
