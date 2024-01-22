#include <stdio.h>
void main()
{
   int a,b,c;
   printf("enter the value of a......\n");
   scanf("%d",&a);
   printf("enter the value of b.....\n");
   scanf("%d",&b);

 addition(a,b);
 subraction(a,b);
 multiplication(a,b);
 division(a,b);
 modlus(a,b);
 increment1(a);
 decrement(a);
 assign(a,b);
 plus_equal(a);
 sub_equal(a);
 multiply_equal(a);
divide_equal();
 /*greater();
 smaller();
 and();
 or();
 not();*/

 return 0;
}

int addition(int a,int b)
{
printf("ADDITION\n\n");

   int c= a+b;
   printf("addition of a and b is....%d\n",c);

}
int subraction(int a,int b)
{
   printf("subraction\n\n");

int c= a-b;
   printf("subraction of a and b is....%d\n",c);

}
int multiplication(int a,int b)
{
printf("multiplication\n\n");

   int c= a*b;
   printf("multiply of a and b is....%d\n",c);

}
int division(int a,int b)
{

printf("DIVISION\n\n");

   int c= a/b;
   printf("division of a and b is....%d");
}
   int modlus(int a,int b)
{

printf("MODLUS\n\n");

   int c= a%b;
   printf("modlus of a and b is....%d\n");
}
 int increment1(a)
{

printf("INCREMENT\n\n");



   while(a<40)
   {
       printf("the given condition is true %d\n",a);
       a++;

}
   }

int decrement(int a)
{

printf("DECREMENT\n\n");

         printf("enter the value of a...",a);
         scanf("%d",&a);
   while(a>3)
   {
       printf("the given condition is true %d\n",--a);

}
   }
 int assign(a,b)
 {a=b;
printf("Assigning\n");
printf("assigning result is..%d\n",a);
 }

 int plus_equal(a)
 {
     //x=x+5
     printf("plus_equal\n");

scanf("%d",&a);
     printf("result is..%d\n",a+=5);
 }
 int sub_equal(a)
 {
     //x=x+5
     printf("sub_equal\n");

scanf("%d",&a);
     printf("result is..%d\n",a-=5);
 }
int multiply_equal(a)
 {
     //x=x+5
     printf("multiply_equal\n");

scanf("%d",&a);
     printf("result is..%d\n",a*=5);
 }
 int divide_equal(a)
 {
     //x=x+5
     printf("divide_equal\n");

scanf("%d",&a);
     printf("result is..%d\n",a/=5);
 }
int greater(a,b)
{
    printf("greater/n");

}
