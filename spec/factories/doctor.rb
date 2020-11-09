FactoryBot.define do
  factory :doctor do
    name { Faker::Name.name }
    crm { Faker::Number.leading_zero_number(digits: 6) }
    crm_uf { Faker::Address.state_abbr }
  end
end