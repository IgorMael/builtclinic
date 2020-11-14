class Patient < ApplicationRecord
  validates :name, presence: true
  validates :birth_date, presence: true
  validates :cpf, presence: true, cpf: true, uniqueness: {case_sensitive: true}

  has_many :appointments
  has_many :doctors, through: :appointments

  def cpf=(cpfnumber)
    super(cpfnumber.gsub(/[\.-]/, '')) if cpfnumber.present?
  end

end
