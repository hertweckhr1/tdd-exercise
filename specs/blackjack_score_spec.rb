require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/blackjack_score'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Blackjack Score' do
  it 'can calculate the score for a pair of number cards' do

    # Arrange
    hand = [3, 4]

    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(blackjack_score).must_equal 7
  end

  xit 'facecards have values calculated correctly' do

  end

  it 'calculates aces as 11 where it does not go over 21' do
    # Arrange
    hand = [9, "ace"]

    # Act
    score = blackjack_score(hand)

    # Assert
    expect(blackjack_score).must_be 20

  end

  it 'calculates aces as 1, if an 11 would cause the score to go over 21' do
    # Arrange
    hand = [10, 5, "ace"]

    # Act
    score = blackjack_score(hand)

    # Assert
    expect(blackjack_score).must_be 16

  end

  xit 'raises an ArgumentError for invalid cards' do

  end

  xit 'raises an ArgumentError for scores over 21' do

  end
end
