void main() {
  var deck = new Deck();

  deck.shuffle();
  print(deck.cardsWithSuits('Hearts'));
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
    return cards.where((card) {
      return card.suit == suit;
    });
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
