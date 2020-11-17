# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'required attributes' do
    subject { build(:appointment) }

    it { should validate_uniqueness_of(:starts_at).scoped_to(:doctor_id) }
    it { should validate_presence_of(:ends_at) }
    it { should validate_presence_of(:doctor) }
    it { should validate_presence_of(:patient) }
    it { should belong_to(:doctor) }
    it { should belong_to(:patient) }
  end
end
