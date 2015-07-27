require 'rails_helper'

describe Contact do
  let(:john) { create(:john) }

  it{ should allow_value("John").for(:first_name) }
  it{ should allow_value("Doe").for(:last_name) }
  it{ should allow_value("john@example.com").for(:email) }
  it{ is_expected.to validate_presence_of(:first_name) }
  it{ is_expected.to validate_presence_of(:last_name) }
  it{ is_expected.to validate_presence_of(:email) }

  describe 'after create' do
    it 'Validate saved values' do
      expect(john.first_name).to eq("John")
      expect(john.last_name).to eq("Doe")
      expect(john.email).to eq("john@example.com")
    end
  end
end
