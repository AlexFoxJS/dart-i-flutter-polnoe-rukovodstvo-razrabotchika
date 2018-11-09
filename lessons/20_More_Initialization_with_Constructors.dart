class Desk {
  List<Card> cards;

  Desk() {
    var ranks = ['One', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        //
      }
    }

  }

}

class Card {
  String suit;
  String rank;
}