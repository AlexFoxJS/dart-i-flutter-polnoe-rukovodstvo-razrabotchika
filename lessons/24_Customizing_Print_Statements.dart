void main() {
  var deck = new Deck();

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
    return 'Placeholder text for Deck class';
  }

}

class Card {
  String suit;
  String rank;

  Card(this.rank, this.suit);
}
