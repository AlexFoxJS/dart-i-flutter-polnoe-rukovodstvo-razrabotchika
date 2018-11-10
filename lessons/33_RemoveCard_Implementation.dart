void main() {
  var deck = new Deck();

  deck.removeCard('Diamonds', 'One');
  print(deck);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['One', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank, suit);

        cards.add(card);
      }
    }

  }

  String toString() {
    return cards.toString();
  }

  void shuffle() {
    cards.shuffle();
  }

  cardsWithSuits(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (
      (card.suit == suit) &&
      (card.rank == rank)
    ));
  }
}

class Card {
  String suit;
  String rank;

  Card(this.rank, this.suit);

  String toString() {
    return '\n{rank: "$rank", suit: "$suit"}';
  }
}
