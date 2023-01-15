import java.util.*;

public class Player {
    private int amount;
    private int playerNumber;
    private int curCardValue=0;
    private List<String> cardList = new ArrayList<String>();
    public Player(int amount, int playerNumber){
            this.amount = amount;
            this.playerNumber =playerNumber;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    public List<String> getCardList(){
            return cardList;
    }
    public void setCardList(String card, int curCardValue){
        cardList.add(card);
        this.curCardValue+=curCardValue;
        System.out.printf("\n Player %s Card : %s, Total Card Value : %s\n "
                ,playerNumber,card, this.curCardValue);
    }

    public int getCurCardValue() {
        return curCardValue;
    }

    public void setCurCardValue(int curCardValue) {
        this.curCardValue = curCardValue;
    }
}
