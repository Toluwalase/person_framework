require 'spec_helper'

describe "AddressBook" do
  it 'should load people from a yaml file' do 
   
    ab = AddressBook.new
    ab.load_yaml('./spec/test_data/people_test_data.yml')
    expect(ab.entries.size).to eq 1
    expect(ab.last).to be_a Person
    expect(ab.last.surname).to eq "loren"
    expect(ab.last.emails.first).to eq "j@hotmail.com"
  end



end