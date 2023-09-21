require "./display_card_validity_with_type"
require "./validate_card_type"
require "./validate_card_number"

RSpec.describe "Print Card in defined format" do
    describe "#display_card_validity_with_type" do
        card_number = "60141016700078611"

        it "displays the validity and type of card in the format 'TYPE: NUMBERS (VALIDITY)'" do

            allow_any_instance_of(Object).to receive(:validate_card_type).and_return("Fly Buys Black")
            allow_any_instance_of(Object).to receive(:validate_card_number).and_return("valid")

            # Check if the output matches the expected format
            expect(display_card_validity_with_type(card_number)).to eq("Fly Buys Black: #{card_number} (valid)")
        end
    end
end