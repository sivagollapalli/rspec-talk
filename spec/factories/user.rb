FactoryGirl.define do
  factory :admin, :class => User do 
    first_name "svec"
    last_name "admin"
    email "admin@svec.com"
    password 'test123'
    password_confirmation 'test123'
    is_admin true
  end
end
