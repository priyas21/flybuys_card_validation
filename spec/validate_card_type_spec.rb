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

        context "Fly Buys Red Card" do
            it "validates a valid card with length 16" do
                expect(validate_card_type("6014352700000140")).to eq("Fly Buys Red")
            end

            it "validates a valid card starting with 6014352" do
                expect(validate_card_type("6014352700000140")).to eq("Fly Buys Red")
            end
        end

        context "Fly Buys Green Card" do
            it "validates a valid card with length 16" do
                expect(validate_card_type("6014355526000020")).to eq("Fly Buys Green")
            end

            it "validates a valid card starting with 6014355526 or 6014355529" do
                expect(validate_card_type("6014355526000020")).to eq("Fly Buys Green")
                expect(validate_card_type("6014355529000020")).to eq("Fly Buys Green")
            end
        end

        context "Fly Buys Blue Card" do
            it "validates a valid card with length 16" do
                expect(validate_card_type("6014800011112222")).to eq("Fly Buys Blue")
            end

            it "validates a valid card starting with 6014" do
                expect(validate_card_type("6014709045001234")).to eq("Fly Buys Blue")
            end
        end

        context "Unknown Card" do
            it "rejects an invalid card number with length not equals to 16" do
                expect(validate_card_type("6014100011112222111111")).to eq("Unknown")
            end

            it "rejects an invalid card number not starting with 6104" do
                expect(validate_card_type("50141000111122221")).to eq("Unknown")
            end
        end
    end
end
