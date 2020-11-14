class Doctor < ApplicationRecord
  validates :name, presence: true
  validates :crm, presence: true, uniqueness: {scope: :crm_uf}, numericality: { only_integer: true }
  validates :crm_uf, presence: true

  has_many :appointments, dependent: :restrict_with_error
  has_many :patients, through: :appointments

end
