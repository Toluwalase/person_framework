class AddressBook 



  def initialize
    @entries = []
  end


  def add(addedperson)
    if
    # addedperson.is_a? Person
    # entries << addedperson
    addedperson == FamilyMember || Person
    @entries << addedperson

    end
    def load_yaml(addbook)

      ymlfile = YAML.load(File.open(addbook))
      ymlfile['People'].each do |p|
        people = Person.new(p['fname'], p['surname'], p['dob'])
        @entries << people
      end
    
  end
  def entries
    @entries  
  end
  end
  def list
    
  end
  
end

