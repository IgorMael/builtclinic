# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'required attributes' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:crm) }
    it { should validate_numericality_of(:crm) }
    it { should validate_presence_of(:crm_uf) }
    it { should validate_uniqueness_of(:crm).scoped_to(:crm_uf) }
  end
end
