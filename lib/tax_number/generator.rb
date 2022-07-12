# frozen_string_literal: true

module TaxNumber
  module Generator
    MULTIPLIER = [1,2,1,2,1,2,4,1].freeze

    def self.tax_number
      tax_number = 8.times.map { rand(1..9) }.join
      return tax_number if valid?(tax_number)
      
      self.tax_number
    end

    private

    def self.valid?(string)
      ubn = string.to_s 

      return false if !( ubn =~ /^\d+$/ )

      digits = ubn.chars.map(&:to_i)

      special_sum = calculate_special_sum(digits)

      if special_sum % 10 == 0
        return true
      else
        if digits[6] == 7 && special_sum % 10 == 9
          return true
        else
          return false
        end
      end
    end

    def self.calculate_special_sum(digits)
      sum = 0
      8.times do |i|
        m = digits[i] * MULTIPLIER[i]
        sum += m.divmod(10).inject(0, &:+)
      end
      sum
    end
  end
end
