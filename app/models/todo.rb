class Todo < ApplicationRecord
  validates :name, :quote, presence: true
end
