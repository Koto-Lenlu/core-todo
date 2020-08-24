class Todo < ApplicationRecord
  validates :name, :comment, :quote, presence: true
  belongs_to :user

  def next
    user.todos.order('created_at desc, id desc').where('created_at >= ? and id > ?', created_at, id).reverse.first
  end
end
