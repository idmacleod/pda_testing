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
        @cards = [@card1, @card2, @card3, @card4]
    end

    def test_check_for_ace__true()
        assert(CardGame.check_for_ace(@card1))
    end

    def test_check_for_ace__false()
        refute(CardGame.check_for_ace(@card2))
    end

    def test_highest_card__arg1()
        assert_equal(@card4, CardGame.highest_card(@card4, @card2))
    end

    def test_highest_card__arg2()
        assert_equal(@card4, CardGame.highest_card(@card3, @card4))
    end

    def test_highest_card__ace()
        assert_equal(@card1, CardGame.highest_card(@card1, @card2))
    end

    def test_highest_card__equal()
        # Assume returns nil
        assert_nil(CardGame.highest_card(@card2, @card3))
    end

    def test_cards_total()
        assert_equal("You have a total of 34", CardGame.cards_total(@cards))
    end

end

