 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/patients", type: :request do
  # Patient. As you add validations to Patient, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Patient.create! valid_attributes
      get patients_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      patient = Patient.create! valid_attributes
      get patient_url(patient)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_patient_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      patient = Patient.create! valid_attributes
      get edit_patient_url(patient)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Patient" do
        expect {
          post patients_url, params: { patient: valid_attributes }
        }.to change(Patient, :count).by(1)
      end

      it "redirects to the created patient" do
        post patients_url, params: { patient: valid_attributes }
        expect(response).to redirect_to(patient_url(Patient.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Patient" do
        expect {
          post patients_url, params: { patient: invalid_attributes }
        }.to change(Patient, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post patients_url, params: { patient: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested patient" do
        patient = Patient.create! valid_attributes
        patch patient_url(patient), params: { patient: new_attributes }
        patient.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the patient" do
        patient = Patient.create! valid_attributes
        patch patient_url(patient), params: { patient: new_attributes }
        patient.reload
        expect(response).to redirect_to(patient_url(patient))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        patient = Patient.create! valid_attributes
        patch patient_url(patient), params: { patient: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested patient" do
      patient = Patient.create! valid_attributes
      expect {
        delete patient_url(patient)
      }.to change(Patient, :count).by(-1)
    end

    it "redirects to the patients list" do
      patient = Patient.create! valid_attributes
      delete patient_url(patient)
      expect(response).to redirect_to(patients_url)
    end
  end
end
