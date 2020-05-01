require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../card")
require_relative("../card_game")

class CardTest < MiniTest::Test

    def setup()
        @card1 = Card.new("hearts", 14)
        @card2 = Card.new("clubs", 5)
        @card3 = Card.new("spades", 5)
        @card4 = Card.new("diamonds", 10)

    end

    def test_check_for_ace__true()
        assert(checkforAce(@card1))
    end

    def test_check_for_ace__false()
        refute(checkforAce(@card2))
    end

    def test_highest_card__arg1()
        assert_equal(@card4, highest_card(@card4, @card2))
    end

    def test_highest_card__arg2()
        assert_equal(@card4, highest_card(@card3, @card4))
    end

    def test_highest_card__ace()
        assert_equal(@card1, highest_card(@card1, @card2))
    end

    def test_highest_card__equal()
        # Assume returns nil
        assert_nil(@card1, highest_card(@card2, @card3))
    end
    
end