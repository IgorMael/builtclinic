FactoryBot.define do
  factory :appointment do
    starts_at { Faker::Time.between(from: 1.day.ago, to: 1.day.from_now).change({hour: 8, min: 0, sec: 0}) }
    ends_at { starts_at + 30.minutes }
    patient
    doctor
  end
end
