require 'rails_helper'
RSpec.describe Todo, type: :model do
  describe '#create' do
    it "is valid with a name, comment, quote, user_id" do
    user = create(:user)
      todo = build(:todo, user_id: user[:id])
      expect(todo).to be_valid
    end
    it "is invalid without a name" do
      user = create(:user)
      todo = build(:todo, user_id: user[:id], name: nil)
      todo.valid?
    end
    it "is invalid without a comment" do
      user = create(:user)
      todo = build(:todo, user_id: user[:id], comment: nil)
      todo.valid?
    end
    it "is invalid without a quote" do
      user = create(:user)
      todo = build(:todo, user_id: user[:id], quote: nil)
      todo.valid?
    end
  end
end