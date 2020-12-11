=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end

class PhoneNumber
  def self.clean(number)
    number.gsub!(/\D/, '')
    return nil unless number.match?(/^1?[2-9]\d{2}[2-9]\d{6}$/)
    number.chars.last(10).join
  end
end
