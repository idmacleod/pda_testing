require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../card")

class CardTest < MiniTest::Test

    def setup()
        @card = Card.new("spades", 5)
    end

    def test_card_has_suit()
        assert_equal("spades", @card.suit)
    end

    def test_card_has_value()
        assert_equal(5, @card.value)
    end

end