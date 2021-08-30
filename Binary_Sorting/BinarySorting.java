public class BinarySorting {
  public static void main(String[] args) {

    int[] number = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
    int searchNumber = (int) (Math.random()*20);
      System.out.println(number[searchNumber] + " is being searched for.");

      int now = 10;
      int last1 = 0;
      int last2 = 19;

      while(now != searchNumber){
        if(now<0){
          now=0;
        }
        if(now>19){
          now=19;
        }
        System.out.println(number[now]);

        if(number[now]>number[searchNumber]){
          last2 = now;
          if(number[now] == 2){
            now--;
          }
          else{
            now = now-((now-last1)/2) + (int) (Math.random()*2) - (int) (Math.random()*-2);
          }
        }
        else if(number[now]<number[searchNumber]){
          last1 = now;
          now = now+((last2 -now)/2) + (int) (Math.random()*2) - (int) (Math.random()*2);
          }
        }
        System.out.println(number[now] + " is the number found, and has index place " + now);
        }
      }
