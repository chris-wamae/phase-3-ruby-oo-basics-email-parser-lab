# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(emails)
    @emails = emails
  end

  def parse
    if @emails.match(/,/).to_s == ",".to_s
      first_sort = @emails.split(",").map { |email| email.strip }.uniq
      sorted = first_sort.map do |each_email|
        if each_email.match(" ").to_s == " ".to_s
          each_email.split
        else
          each_email
        end
      end
      pp sorted
      flattened = sorted.flatten
      flattened.each { |element| element.strip }
      pp flattened
      flattened
    else
      @emails.split.map { |email| email.strip }.uniq
    end
  end
end

