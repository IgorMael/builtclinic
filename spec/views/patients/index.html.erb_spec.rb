require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      create(:patient).decorate,
      create(:patient).decorate,
    ])
  end

  it "renders a list of patients" do
    render
  end
end
