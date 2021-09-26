require 'rails_helper'

RSpec.describe Strain, type: :model do
  it 'Create a strain with nil name' do
    strain = Strain.create(name: nil)
    expect(strain).to_not be_valid
  end

  it 'Create a strain with no name' do
    strain = Strain.create(name: "")
    expect(strain).to_not be_valid
  end

  it 'Create a strain with Carmenere name' do
    strain_1 = Strain.create(name: "Carmenere")
    strain_2 = Strain.create(name: "Carmenere")
    expect(strain_2).to_not be_valid
  end
end
