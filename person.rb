class Person

  attr_reader :dob, :first_name, :surname, :emails, :phone

  def initialize(fname, sname,dob=nil)
    @first_name = fname.capitalize
    @surname = sname.capitalize
    @dob = Date.parse(dob) if dob
    @emails = []
    @phone = []
  end

  def fullname
    "#{@first_name} #{@surname}"
  end

  def add_email(email)
   emails << email
  end

  def add_phone(number)
    phone << number
  end

  def remove_email(place)
    @emails.delete_at(place)
  end
  def remove_phone(place)
    @phone.delete_at(place)

  end
end
