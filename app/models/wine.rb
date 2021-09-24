class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, through: :wine_strains
    accepts_nested_attributes_for :wine_strains, reject_if: :all_blank 
    has_many :wine_scores
    has_many :oenologists, through: :wine_scores
    accepts_nested_attributes_for :wine_scores, reject_if: :all_blank 
end
