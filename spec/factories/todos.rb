FactoryBot.define do

  factory :todo do
    name             {"todo1"}
    comment          {"abcdefg"}
    quote            {"1"}
    user_id          { create(:user) }
  end

end