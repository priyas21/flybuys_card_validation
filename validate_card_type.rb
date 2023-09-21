def validate_card_type(card_number) 
    case card_number
    when /^60141\d{11,12}$/
        card_type = "Fly Buys Black"
    when /^6014352\d{9}$/
        card_type = 'Fly Buys Red'
    when /^601435552[69]\d{6}$/
        card_type = 'Fly Buys Green'
    when /^6014\d{12}$/
        card_type = 'Fly Buys Blue'
    else
        card_type = "Unknown"
    end
end
