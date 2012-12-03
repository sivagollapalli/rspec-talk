FactoryGirl.define do
  factory :exam do 
    maths 80
    physics 65
    chemistry 75
    association :student
  end
end
