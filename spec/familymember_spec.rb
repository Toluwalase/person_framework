require 'spec_helper'

describe "FamilyMember class" do
  it 'should store and return personal infromation' do 
   
    person = Person.new("joe", "bloggs", "1 Jan 1990")
    expect(person.dob).to eq Date.new(1990, 1, 1)
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
    person = FamilyMember.new("relative")
    expect(person.relationship).to eq "relative"
  end

end