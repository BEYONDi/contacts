namespace :contact do
  desc 'Perform tasks related to Contacts'

  task spawn_contacts: :environment do
    require 'populator'
    require 'faker'

    desc 'Create contacts to populate app'

    # contact = Contact.new()
    # contact.save!
    Contact.populate 100 do |contact|
      contact.first_name = Faker::Name.first_name
      contact.last_name = Faker::Name.last_name
      contact.email = Faker::Internet.email
    end
  end
end
