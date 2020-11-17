# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PatientDecorator do
  context 'formating cpf' do
    it 'should return a formatted cpf' do
      patient = build(:patient, cpf: '22529385017').decorate
      expect(patient.cpf_formatted).to eq('225.293.850-17')
    end
  end
end
