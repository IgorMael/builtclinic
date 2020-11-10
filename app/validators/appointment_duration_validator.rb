class AppointmentDurationValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # ap = Appointment.new(starts_at: Time.now.change(hour: 8, min: 0, sec: 0), ends_at: Time.now.change(hour: 8, min:30, sec:0), doctor_id: 1, patient_id: 1)
    appointment_duration = options[:duration] || 30.minutes
    record.errors.add(attribute, "Invalid appointment duration. It should be #{appointment_duration} minutes") unless value - appointment_duration == record[:starts_at]
  end
end
