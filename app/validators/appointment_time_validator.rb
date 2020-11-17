# frozen_string_literal: true

class AppointmentTimeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return unless value

    time = Time.now
    range = Range.new(time.change(hour: 8, min: 0, sec: 0).to_i, time.change(hour: 17, min: 30, sec: 0).to_i)
    interval_range = Range.new(time.change(hour: 12, min: 0, sec: 0).to_i, time.change(hour: 12, min: 30, sec: 0).to_i)

    lunch_time = interval_range.step(30.minutes).map { |hour| Time.at(hour).to_s(:time) }

    intervals = range.step(30.minutes).map { |hour| Time.at(hour).to_s(:time) }.difference(lunch_time)
    if options[:type] == 'end_time'
      record.errors.add(attribute, 'Invalid appointment time') unless (value - 30.minutes).to_s(:time).in? intervals
    else
      record.errors.add(attribute, 'Invalid appointment time') unless value.to_s(:time).in? intervals
    end
  end
end
