// Setup
import java.util.*;
public class SelSort {
public static void selsort(int[] arr){


  int n = arr.length; //Længden af Array'en
  for(int i = 0; i < n - 1; i++){
  int MIN = i; //Sæt første position som MIN
    System.out.println("Sorting around Index No. " + (i + 1));

//Find mindste tal ved at sammenlinge med tal i MIN

  for(int j = i + 1; j < n; j++){
    System.out.println("Now comparing " + arr[MIN] + " & " + arr[j]);
    if(arr[j] < arr[MIN]){
  System.out.println("SWAP! " + arr[MIN] + " > " + arr[j] );
    MIN = j;
    }
    else if(arr[j] > arr[MIN]){
      System.out.println("NO SWAP! " + arr[MIN] + " < " + arr[j] );
    }
  }

//Byt mindste tal med tal i MIN variablen
  int temp1 = arr[i];
    arr[i] = arr[MIN];
    arr[MIN] = temp1;
    }
  }
public static void main(String[] args) {
  int[] arr = {(int) (Math.random()*100),(int) (Math.random()*100),(int) (Math.random()*100),(int) (Math.random()*100),(int) (Math.random()*100),(int) (Math.random()*100)}; // input array
  System.out.println("Input Array: " + Arrays.toString(arr));
    selsort(arr);// Kalder Selektion Sortering metoden

  System.out.println("Output Array: " + Arrays.toString(arr));
  }
}
