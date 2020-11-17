# frozen_string_literal: true

class PatientsController < ApplicationController
  before_action :set_patient, only: %i[edit update destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all.decorate
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit; end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patients_path, notice: 'Cadastro realizado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patients_path, notice: 'Cadastro atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_path, notice: 'Cadastro excluído com sucesso.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_patient
    @patient = Patient.find(params[:id]).decorate
  end

  # Only allow a list of trusted parameters through.
  def patient_params
    params.require(:patient).permit(:name, :birth_date, :cpf)
  end
end
