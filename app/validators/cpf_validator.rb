# frozen_string_literal: true

class CpfValidator < ActiveModel::EachValidator
  require 'cpf_cnpj'

  def validate_each(record, attribute, value)
    record.errors.add(attribute, 'Invalid number') unless CPF.valid? value
  end
end
