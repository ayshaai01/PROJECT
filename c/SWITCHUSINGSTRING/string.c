# include <stdio.h>
int main()
{
 int a,x,y,z;
 char operator;
 printf("the value is ");
 scanf("%d",&a);
 if (a==2)
{printf("enter the value of x\n");
scanf("%d",&x);
printf("enter the value of y\n");
scanf("%d",&y);
printf("select the operator");
scanf(" %c",&operator);
switch (operator)
{
case '+':
printf( "adding two values %d\n",x+y);
break;
case '-':
printf("subracting two values%d\n", x-y);
break;
case '*':
printf("multiply two no%d\n",x*y);
break;
case '/':
printf("dividing two values%d\n", x/y);
break;
default:
printf("case not match");

}}
else
{printf("enter the value of x \n");
scanf("%d",&x);
printf("enter the value of y\n");
scanf("%d",&y);
printf("enter the value of z");
scanf("%d",&z);
printf("select the operator");
scanf(" %c",&operator);
switch (operator)
{
case '+':
printf( "adding three values %d\n",x+y+z);
break;
case '-':
printf("subracting three values %d\n", x-y-z);
break;
case '*':
printf("multiply three no %d\n",x*y*z);
break;
case '/':
printf("dividing three values %d\n", x/y/z);
break;
default:
printf("case not match");

}}
    return 0;

}
