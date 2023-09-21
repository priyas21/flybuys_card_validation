def validate_card_number(card_number)
    reveresed_digits = card_number.reverse.chars.map(&:to_i)
    sum = 0

    reveresed_digits.each_with_index do |digit, index|
        if index.odd?
            double_digit = digit * 2
            double_digit -= 9 if double_digit > 9
            
            sum += double_digit
        else
            sum += digit
        end
    end

    validtity = sum % 10 == 0 ? "valid" : "invalid"
end
