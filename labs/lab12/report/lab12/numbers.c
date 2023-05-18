#include <stdio.h>
#include <stdlib.h>

int main(){
   int number;
   printf("Введите число: ");
   scanf("%d", &number);
   
   if (number > 0)
   {
      printf("число > 0\n");
      exit(number);
   }
   else if (number < 0)
   {
      printf("число < 0\n");
      exit(number);
   }   
   else 
   {
      printf("число = 0\n");
      exit(number);
   }    
    
   return 0;
}
