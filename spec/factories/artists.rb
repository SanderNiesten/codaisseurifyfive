FactoryGirl.define do
  factory :artist do
    name              { Faker::Lorem.sentence(1) }

  end
end
