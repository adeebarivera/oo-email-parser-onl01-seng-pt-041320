class EmailAddressParser
  attr_accessor :name, :cvs_email
  
  def initialize(cvs_email)
    @cvs_email = cvs_email
  end

  def parse
    cvs_email.split.collect do |address| address.split(',')
    end
   .flatten.uniq
  end
end
