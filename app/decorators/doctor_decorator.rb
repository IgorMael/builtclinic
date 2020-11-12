class DoctorDecorator < Draper::Decorator
  delegate_all

  def full_crm
    "#{object.crm}/#{object.uf}"
  end
end