require "./validate_card_number"

RSpec.describe "CardNumberValidator" do
    describe "#card_number_valid?" do
        valid_card_number = "6014355510000028"
        invalid_card_number = "6014365510000028"

        context "when validating valid card number" do
            it "returns valid" do
                expect(validate_card_number(valid_card_number)).to eq("valid")
            end
        end
        
        context "when validating an invalid card number" do
            it "returns invalid" do
                expect(validate_card_number(invalid_card_number)).to eq("invalid")
            end
        end
    end
end
