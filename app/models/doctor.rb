class Doctor < ApplicationRecord
    validates :name, presence: true
    validates :crm, presence: true, uniqueness: {scope: :crm_uf}
    validates :crm_uf, presence: true
end
