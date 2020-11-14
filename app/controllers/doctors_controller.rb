class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:edit, :update, :destroy]

  # GET /doctors
  # GET /doctors.json
  def index
    @doctors = Doctor.all.decorate
  end
  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctors/1/edit
  def edit
  end

  # POST /doctors
  # POST /doctors.json
  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to doctors_path, notice: 'Cadastro realizado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /doctors/1
  # PATCH/PUT /doctors/1.json
  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to doctors_path, notice: 'Cadastro atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /doctors/1
  # DELETE /doctors/1.json
  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to doctors_path, notice: 'Cadastro excluído com sucesso.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_params
      params.require(:doctor).permit(:name, :crm, :crm_uf)
    end
end
