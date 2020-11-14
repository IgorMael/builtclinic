class DashboardController < ApplicationController
  before_action :set_doctor
 
  def index
    @appointments = @doctor&.appointments&.finished&.count || Appointment.finished.count
    @consulted_patients =  @doctor&.appointments&.finished&.pluck(:patient_id)&.uniq&.count || Appointment.pluck(:patient_id)&.uniq&.count
  end

  private

  def set_doctor
    @doctor = Doctor.find(params["doctor"]) if params["doctor"].present?
  end
end
