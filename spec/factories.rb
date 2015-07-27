FactoryGirl.define do

  factory :john, class: Contact do
    first_name "John"
    last_name "Doe"
    email "john@example.com"
  end

end
