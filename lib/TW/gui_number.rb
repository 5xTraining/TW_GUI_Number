# frozen_string_literal: true

module TW
  module GUINumber
    MULTIPLIER = [1, 2, 1, 2, 1, 2, 4, 1].freeze

    def self.generate
      gui_number = 8.times.map { rand(1..9) }.join
      return gui_number if valid?(gui_number)

      generate
    end

    def self.valid?(string)
      gui_number = string.to_s

      return false if gui_number !~ /^\d+$/

      digits = gui_number.chars.map(&:to_i)

      special_sum = calculate_special_sum(digits)

      return true if (special_sum % 5).zero? || (((special_sum + 1) % 5).zero? && digits[6] == 7)

      false
    end

    def self.calculate_special_sum(digits)
      digits.map.with_index do |_digit, i|
        (digits[i] * MULTIPLIER[i]).divmod(10).inject(0, &:+)
      end.sum
    end

    private_class_method :calculate_special_sum
  end
end
