class EmailParser
# emails. The parse method on the class should separate them into	
# unique email addresses. The delimiters to support are commas (',')	  attr_accessor :emails
# or whitespace (' ').	
  def initialize(emails)
    @emails=emails
  end

  def parse
    emails.split.map do |email|
      email.split(',')
    end.flatten.uniq
  end
end
