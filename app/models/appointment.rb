class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :starts_at, presence: true, uniqueness: {scope: :doctor_id}
  validates :ends_at, presence: true
  validates :patient, presence: true
  validates :doctor, presence: true
end
