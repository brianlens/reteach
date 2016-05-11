FactoryGirl.define do
  factory :review do
    title { Faker::Name.title}
    rating  5
    description "This is great!"
    user
    teacher
  end
end
