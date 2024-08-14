require 'minitest/autorun'
require_relative 'superheroes_ruby/main'

class TestBattle < Minitest::Test
  def setup
    @hero = { "name" => "Hero", "score" => 10 }
    @villain = { "name" => "Villain", "score" => 5 }
    @characters = { "items" => [@hero, @villain] }

    # Mock the get_characters method
    def get_characters
      @characters
    end
  end

  def test_battle
    result = battle("Hero", "Villain")
    assert_equal @hero, result
  end
end

