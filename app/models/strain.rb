class Strain < ApplicationRecord
    has_many :wine_strains
    has_many :wines, through: :wine_strains
    validates :name, presence: true, format: { with: /\A[a-zA-Z0-9]+\Z/ }
    validates_uniqueness_of :name
end
