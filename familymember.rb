class FamilyMember < Person

  attr_reader :relationship

  def initialize(rel)
    @relationship = rel
    
  end

end