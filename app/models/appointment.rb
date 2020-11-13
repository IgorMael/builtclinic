class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :starts_at, presence: true, uniqueness: {scope: :doctor_id}, appointment_time: {type: 'start_time'}
  validates :ends_at, presence: true, appointment_time: {type: 'end_time'}, appointment_duration: true
  validates :patient, presence: true
  validates :doctor, presence: true

  def starts_at=(start_date)
    super(start_date) if start_date.present?
    ends_at = start_date + 30.minutes
  end
end
