def validate_card_type(card_number) 
    case card_number
    when /^60141\d{11,12}$/
        card_type = "Fly Buys Black"
    else
        card_type = "Unknown"
    end
end
