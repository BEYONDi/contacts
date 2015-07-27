require 'rails_helper'

describe Contact do
  let(:john) { create(:john) }

  it{ should allow_value("John").for(:first_name) }
  it{ should allow_value("Doe").for(:last_name) }
  it{ should allow_value("john@example.com").for(:email) }

  describe 'after create' do
    it 'Validate saved values' do
      expect(john.first_name).to eq("John")
      expect(john.last_name).to eq("Doe")
      expect(john.email).to eq("john@exmaple.com")
    end
  end
end
