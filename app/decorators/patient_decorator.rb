# frozen_string_literal: true

class PatientDecorator < Draper::Decorator
  delegate_all

  def cpf_formatted
    CPF.new(object.cpf).formatted
  end
end
