require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../card")
require_relative("../card_game")

class CardTest < MiniTest::Test

    def setup()
        @card1 = Card.new("hearts", 1)
        @card2 = Card.new("clubs", 5)
        @card3 = Card.new("spades", 5)
        @card4 = Card.new("diamonds", 10)
    end

    def test_check_for_ace__true()
        assert(checkforAce(@card1))
    end

end