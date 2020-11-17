# frozen_string_literal: true

class DoctorDecorator < Draper::Decorator
  delegate_all

  def full_crm
    "#{object.crm}/#{object.crm_uf}"
  end

  def title_name
    "Dr. #{object.name}"
  end
end
