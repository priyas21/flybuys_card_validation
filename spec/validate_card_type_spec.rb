require "./validate_card_type"

RSpec.describe "CardTypeValidator" do
    context "Fly Buys Cards" do
        context "Fly Buys Black Card" do
            it "validates a valid card with length 16 or 17" do
                expect(validate_card_type("6014100011112222")).to eq("Fly Buys Black")
            end

            it "validates a valid card starting with 60141" do
                expect(validate_card_type("6014100011112222")).to eq("Fly Buys Black")
            end
        end
    end
end
