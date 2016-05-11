FactoryGirl.define do
  factory :school do
    name { Faker::Name.name}
    city "Amsterdam"
    rating 5
 end
end
