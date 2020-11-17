# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :starts_at, presence: true, uniqueness: { scope: :doctor_id }, appointment_time: { type: 'start_time' }
  validates :ends_at, presence: true, appointment_time: { type: 'end_time' }, appointment_duration: true
  validates :patient, presence: true
  validates :doctor, presence: true

  scope :finished, -> { where('ends_at < ?', Time.now) }

  def starts_at=(start_date)
    return unless start_date.present?

    start_date = DateTime.new(*start_date.sort.to_h.values.map(&:to_i)) if start_date.is_a? Hash
    start_date = start_date.to_time if start_date.is_a? String
    super(start_date) if start_date.present?
    self.ends_at = start_date + 30.minutes
  end
end
