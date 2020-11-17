# frozen_string_literal: true

FactoryBot.define do
  factory :patient do
    name { Faker::Name.name }
    birth_date { Faker::Date.birthday(min_age: 2, max_age: 115) }
    cpf { Faker::IDNumber.brazilian_citizen_number } # generate_a_cpf_number
  end
end
