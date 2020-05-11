class EmailAddressParser
  attr_accessor :name, :cvs_email
  
  def initialize(cvs_email)
    @emails=cvs_email
  end

  def parse
    emails.split.map do |email|
      email.split(',')
    end.flatten.uniq
  end
end
