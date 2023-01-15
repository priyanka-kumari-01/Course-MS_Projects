import java.util.*;

public class PlayingCard {
    private Dealer dealer;
    private Player[] player;
    private int randomCardIndex=0;
    private String currCard;
    private int option=0;

    Scanner input = new Scanner(System.in);
    private List<String> cardList = new ArrayList<String>();
    private List<Integer> amountList = new ArrayList<Integer>();

    public  PlayingCard(Dealer dealer, Player[] player, List<String> cardList){
        this.dealer =  dealer;
        this.player = player;
        this.cardList = cardList;
    }

    public void playGame(){
        System.out.println("Welcome to BlackJack!");
        // Showing amount and asking bet amount

        for (int i=0; i<player.length; i++) {
            System.out.printf("Player %s have $%s\n", i+1,player[i].getAmount());
            option=0;
            while (option==0) {
                System.out.printf("How much you want to bet? ");
                int betAmt =  input.nextInt();
                if (player[i].getAmount() >= betAmt) {
                    amountList.add(betAmt);
                    option = 2;
                }
                else
                    System.out.println("Bet amount is more the your current amount, Try again!");
            }
        }
        // Giving two card to each player and dealer
        System.out.println("Dealing... ");
        for(int i=0; i<player.length; i++){
            for (int j=0; j<2; j++){
                currCard = cardList.get(randomCardIndex);
                player[i].setCardList(currCard, ValueCard(currCard,
                        player[i].getCurCardValue()));
                cardList.remove(randomCardIndex);
                randomCardIndex+=1;
            }
        }
        for (int i=0; i<2; i++){
            currCard = cardList.get(randomCardIndex);
            if (i==0)
                dealer.setCardList(currCard, true, ValueCard(currCard,
                        dealer.getCurCardValue()));
            else
                dealer.setCardList(currCard, false, ValueCard(currCard,
                        dealer.getCurCardValue()));
            cardList.remove(randomCardIndex);
            randomCardIndex+=1;
        }
        System.out.println("Dealing...");
        for(int i=0; i<player.length; i++){
            option=0;
            while (option==0){
                if (player[i].getCurCardValue()<21) {
                    System.out.printf("\nPlayer %s enter [1]Hit [2]Stand", i + 1);
                    int value = input.nextInt();
                    if (value == 1) {
                        currCard = cardList.get(randomCardIndex);
                        player[i].setCardList(currCard, ValueCard(currCard,
                                player[i].getCurCardValue()));
                        cardList.remove(randomCardIndex);
                        randomCardIndex += 1;
                    } else
                        option = 2;
                }
                else
                    option =2;
            }
        }
        System.out.println("Score");
        System.out.println("Dealers cards are: ");
        for (String s: dealer.getCardList())
            System.out.println(s);
        System.out.println("Dealers Total value: "+dealer.getCurCardValue());

        //Result
        for(int i=0; i<player.length; i++){
            int playerValue = player[i].getCurCardValue();
            int dealerValue = dealer.getCurCardValue();
            if (playerValue>dealerValue && playerValue<=21 || dealerValue>21 ){
                System.out.printf("\nPlayer %s is WON!, amount is: %s",i+1,(amountList.get(i)*2));
            }else if (playerValue==dealerValue && playerValue<=21 || dealerValue>21 && playerValue>21)
                System.out.printf("\nMatch is draw, amount is: %s ",amountList.get(i));
            else
                System.out.printf("\nPlayer %s is Loss, Its amount is: %s",i+1,0);
        }
    }

    private static int ValueCard(String card, int curVal){
        if (card.contains("King")||card.contains("Queen") ||card.contains("Jack"))
            return 10;
        else if(card.contains("Deuce"))
            return 2;
        else if (card.contains("Three"))
            return 3;
        else if (card.contains("Four"))
            return 4;
        else if (card.contains("Five"))
            return 5;
        else if (card.contains("Six"))
            return 6;
        else if (card.contains("Seven"))
            return 7;
        else if (card.contains("Eight"))
            return 8;
        else if (card.contains("Nine"))
            return 9;
        else if (card.contains("Ten"))
            return 10;
        else
            return aceCard(card, curVal);
    }
    private static int aceCard(String card, int curVal){
        if (card.contains("Ace") && curVal<11)
            return 11;
        else
            return 1;
    }
}
