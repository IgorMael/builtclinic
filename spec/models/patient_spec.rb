require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe "required attributes" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:birth_date) }
    it { should validate_presence_of(:cpf) }
    it { should validate_uniqueness_of(:cpf) }
    it { is_expected.to allow_value(CPF.generate).for(:cpf) }
    it { is_expected.to allow_value(CPF.generate(true)).for(:cpf) }
    it { is_expected.not_to allow_value("11111111111").for(:cpf) }
  end
end
