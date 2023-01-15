import java.util.*;

public class DeckOfCardsTest {
    // execute application

    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        DeckOfCards myDeckOfCards = new DeckOfCards();
        myDeckOfCards.shuffle(); // place Cards in random order
        List<String> cardList = new ArrayList<String>();
        for (int i = 0; i < 52; i++) {
            cardList.add(String.valueOf(myDeckOfCards.dealCard()));
        }
        System.out.println("Enter number of player 2 to 5");
        int noPlayer = input.nextInt();
        if (noPlayer>=2 && noPlayer<=5){
            Dealer dealer = new Dealer();

            Player[] player = new Player[noPlayer];
            for (int i=0; i<noPlayer;i++){
                System.out.printf("\nEnter the initial amount Player %s: ", i+1);
                int amount = input.nextInt();
                player[i] = new Player(amount, (i+1));
            }
            PlayingCard play = new PlayingCard(dealer,player, cardList);
            play.playGame();
        }
        else
            System.out.println("Invalid Entry, number of player should 2 to 5");
    }
}