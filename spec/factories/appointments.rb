FactoryBot.define do
  factory :appointment do
    starts_at { "2020-11-09 19:42:18" }
    ends_at { "2020-11-09 19:42:18" }
    patient
    doctor
  end
end
