FactoryBot.define do
  factory :patient do
    name { Faker::FunnyName.name }
    birth_date { Faker::Date.birthday(min_age: 2, max_age: 115) }
    cpf { Faker::IDNumber.brazilian_citizen_number } #generate_a_cpf_number
  end
end