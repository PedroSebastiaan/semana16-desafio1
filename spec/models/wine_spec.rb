require 'rails_helper'

RSpec.describe Wine, type: :model do
  it 'different strain name' do
    wine = Wine.create(name: "Test-name", year: "test-year")
    strains = Wine.wine_strains.create()
  end 
end
