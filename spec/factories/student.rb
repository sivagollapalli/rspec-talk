FactoryGirl.define do
  factory :student do 
    first_name "Siva"
    last_name "Gollapalli"
    sequence(:email) {|n| "siva#{n}@joshsoftware.com" }
    password 'pune007'
    password_confirmation 'pune007'
  end
end
