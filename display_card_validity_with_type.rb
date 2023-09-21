require_relative "validate_card_type"
require "./validate_card_number"

def display_card_validity_with_type
    puts "Enter card number (one per line)\n"

    while(card_number = gets)
        card_number.chomp!

        card_type = validate_card_type(card_number)
        card_number_validity = validate_card_number(card_number)

        final_output = "#{card_type}: #{card_number} (#{card_number_validity})"

        puts final_output
    end
end

display_card_validity_with_type
