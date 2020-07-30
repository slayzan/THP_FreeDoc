class Specialty < ApplicationRecord
    has_many :specialisations
    has_many :doctors, through: :specialisations
end
