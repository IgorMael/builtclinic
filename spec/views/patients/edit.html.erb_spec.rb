require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = create(:patient).decorate
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do
    end
  end
end
