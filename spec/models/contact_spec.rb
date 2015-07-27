require 'rails_helper'

describe Contact do
  let(:contact) { create(:john) }

  it{ should allow_value("John").for(:first_name)}
  it{ should allow_value("Doe").for(:last_name)}
  it{ should allow_value("john@example.com").for(:email)}
end
