import java.util.*;

public class Dealer {
    private int amount=100000;
    private List<String> cardList = new ArrayList<String>();
    private int curCardValue=0;

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    public List<String> getCardList(){
        return cardList;
    }
    public void setCardList(String card, Boolean print, int curCardValue){
        if(print)
            System.out.println("\n Dealer Card first card hidden.");
        else
            System.out.printf("\n Dealer Card : %s, Card Shown Value: %s\n ",card, curCardValue);

        this.curCardValue += curCardValue;
        cardList.add(card);
    }
    public int getCurCardValue(){
        return curCardValue;
    }
    public void setCurCardValue(int curCardValue) {
        this.curCardValue = curCardValue;
    }
}
