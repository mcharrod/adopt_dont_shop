require 'rails_helper'

RSpec.describe AdoptionForm, type: :model do
  describe 'relationship' do
    it { should belong_to(:client)}
  end

  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :street_address }
    it { should validate_presence_of :city }
    it { should validate_presence_of :state }
    it { should validate_presence_of :zip_code }
    it { should validate_presence_of :description }
  end

  it 'exists' do
    form = create(:adoption_form)

    expect(form).to be_an(AdoptionForm)
    expect(form).to be_valid
  end
end
