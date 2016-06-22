require 'spec_helper'

describe "Person class" do
  it 'should store and return personal infromation' do
    person = Person.new("joe", "bloggs", "1 Jan 1990")

    expect(person.dob).to eq Date.new(1990, 1, 1)
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
  end

  it 'should have an optional dob' do
    person = Person.new("joe", "bloggs")
    expect(person.dob).to  be_nil
  end

  it 'should put emails into an array' do
    person = Person.new("joe", "bloggs")
    person.add_email ("joe@hotmail.com")
    expect(person.emails).to be_an(Array)
    expect(person.emails).to eq ["joe@hotmail.com"]
  end

  it 'should put phone numbers into an array' do
    person = Person.new("joe", "bloggs")
    person.add_phone ('07890987667')
    expect(person.phone).to be_an(Array)
    expect(person.phone).to eq ["07890987667"]
  end
  it 'should return the fullname of the user' do
    person = Person.new("joe", "bloggs")
    expect(person.fullname).to eq "Joe Bloggs"
  end
  it 'should delete emails' do
    person = Person.new("joe", "bloggs")
    person.add_email("joe@hotmail.com")
    person.remove_email(0)
    expect(person.emails).to be_empty
  end
  it 'should delete phone numbers' do
    person = Person.new("joe", "bloggs")
    person.add_phone("00949403930")
    person.remove_phone(0)
    expect(person.phone).to be_empty
  end
  # it 'should display the information of users' do
  #   person = Person.new("joe", "bloggs")
  #   person.fullname("Joe Bloggs")
  #   person.add_phone("0908726363")
  #   person.add_email("joe@hotmail.com")
  #   expect(person.print_details).to eq "Joe Bloggs 0908726363 joe@hotmail.com"
  # end
  # describe "FamilyMember class" do
  #   it 'should be able to add relatives' do
  #     person = Person.new("joe", "bloggs")
  #     family = FamilyMember.new("relative")
  #     expect(person.dob).to eq Date.new(1990, 1, 1)
  #     expect(person.first_name).to eq "Joe"
  #     expect(person.surname).to eq "Bloggs"
  #     expect(person.fullname).to eq "Joe Bloggs"
  #
  #   end
end
