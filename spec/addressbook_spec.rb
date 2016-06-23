require 'spec_helper'

describe "AddressBook class" do
  it 'should store details in the address book' do 
   
    person = Person.new("joe", "bloggs", "1 Jan 1990")
    expect(person.dob).to eq Date.new(1990, 1, 1)
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
    book = AddressBook.new
    expect(book.add).to eq (person)
  end

end