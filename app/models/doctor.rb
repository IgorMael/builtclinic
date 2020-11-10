class Doctor < ApplicationRecord
    validates :name, presence: true
    validates :crm, presence: true, uniqueness: {scope: :crm_uf}, numericality: { only_integer: true }
    validates :crm_uf, presence: true

    has_many :appointments
    has_many :patients, through: :appointments

    def starts_at=(start_date)
      super(start_date) if cpfnumber.present?
      ends_at = start_date + 30.minutes
    end
end
