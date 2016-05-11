FactoryGirl.define do
  factory :teacher do
    name { Faker::Name.name }
    nickname { Faker::Name.nickname }
    subject  { "Coding" }
    image { Faker::Avatar.image }
    avgrating { 5 }
  end
end
