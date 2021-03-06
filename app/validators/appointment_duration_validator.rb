# frozen_string_literal: true

class AppointmentDurationValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return unless value

    # ap = Appointment.new(starts_at: Time.now.change(hour: 8, min: 0, sec: 0), ends_at: Time.now.change(hour: 8, min:30, sec:0), doctor_id: 1, patient_id: 1)
    appointment_duration = options[:duration] || 30.minutes
    unless value - appointment_duration == record[:starts_at]
      record.errors.add(attribute, "Invalid appointment duration. It should be #{appointment_duration} minutes")
    end
  end
end
