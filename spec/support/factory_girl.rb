RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

FactoryGirl.define do
  factory :employee, aliases: [:user, :john_doe] do
    given_name "John"
    family_name "Doe"
    admin false
  end

  factory :blank_employee, class Employee do
  end

  factory :admin, class employee do
    given_name "Bryan"
    family_name "Ueda"
    admin true
  end

  # factory :dispersement do
  #   user

  # end
end
