defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck creates 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

  test "dealing a deck results in two sets of cards" do
    deck = Cards.create_deck
    {hand, rest_of_deck} = Cards.deal(deck, 5)
    assert length(hand) == 5
    assert length(rest_of_deck) == 15
  end
end
