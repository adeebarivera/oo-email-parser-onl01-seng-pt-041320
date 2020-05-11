class EmailAddressParser
  attr_accessor :name, :cvs_email
  
  def initialize(emails)
    @emails=emails
  end

  def parse
    emails.split.map do |email|
      email.split(',')
    end.flatten.uniq
  end
end
