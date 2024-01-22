#include <stdio.h>
void main()
{
 addition();
 subraction();
 multiplication();
 division();
 modlus();
 increment();
 decrement();
 assign();
 plus_equal();
 sub_equal();
 multiply_equal();
 divide_equal();
 greater();
 smaller();
 and();
 or();
 not();
 return 0;
}
int addition()
{
   int father_age=40;
   int son_age=20;
   int total_age=father_age+son_age;
   printf("ADDITION\n\n");
   printf("addition of father and son age is....%d\n",total_age);

}

int subraction()
{
   int father_age=40;
   int son_age=20;
   int total_age=father_age-son_age;
   printf("SUBRACTION\n\n");
   printf("Subraction of father and son age is....%d\n",total_age);

}
int multiplication()
{
   int father_age=40;
   int son_age=20;
   int total_age=father_age*son_age;
   printf("MULTIPLICATION\n\n");
   printf("multiply of father and son age is....%d\n",total_age);

}

int division()
{
   int father_age=40;
   int son_age=20;
   int total_age=father_age/son_age;
   printf("DIVISION\n\n");
   printf("division of father and son age is....%d\n",total_age);

}


int modlus()
{
   int father_age=40;
   int son_age=20;
   int total_age=father_age%son_age;
   printf("MODLUS\n\n");
   printf("modlus of father and son age is....%d\n",total_age);

}

int increment()
{
   int father_age=40;
   int son_age=20;
   int total_age=father_age+son_age;
   printf("INCREMENT\n\n");
   printf("increment of total_age is....%d\n",++total_age);

}

int decrement()
{
   int father_age=40;
   int son_age=20;
   int total_age=father_age-son_age;
   printf("DECREMENT\n\n");
   printf("decrement of total_age is....%d\n",--total_age);

}

int assign()
{
   int father_age=40;
   int son_age=20;
    father_age=son_age;
   printf("ASSIGN\n\n");
   printf("assiginig of father and son age is....%d\n",father_age);

}
int plus_equal()
{
   int father_age=40;
   int son_age=20;
   int total_age;
    total_age+=20;
   printf("PLUS_EQUAL\n\n");
   printf(" plus_equal is....%d\n",total_age);

}

int sub_equal()
{
   int father_age=40;
   int son_age=20;
   int total_age;
    total_age-=20;
   printf("SUB_EQUAL\n\n");
   printf(" sub_equal is....%d\n",total_age);

}

int multiply_equal()
{
   int father_age=40;
   int son_age=20;
   int total_age;
    total_age*=20;
   printf("MUTIPLY\n\n");
   printf(" multiply_equal is....%d\n",total_age);

}
int divide_equal()
{
   int father_age=40;
   int son_age=20;
   int total_age;
    total_age/=20;
   printf("DIVIDE\n\n");
   printf(" divide_equal is....%d\n",total_age);

}

int greater()
{ int father_age=40;
   int son_age=20;
   printf("greater\n\n");

   printf("check the given age is%d\n",father_age>son_age);


}


int smaller()
{ int father_age=40;
   int son_age=20;
   printf("smaller\n\n");

   printf("check the given age is%d\n",father_age<son_age);


}

int and()
{ int father_age=40;
   int son_age=20;
   int mother_age=35;
   printf("AND operator\n\n");

   printf("check the and operator%d\n\n",(father_age>son_age)&&(son_age>mother_age));


}

int or()
{ int father_age=40;
   int son_age=20;
   int mother_age=35;
   printf("OR operator\n\n");

   printf("check the or operator %d\n\n",(father_age>son_age)||(son_age>mother_age));


}


int not()
{ int father_age=40;s
   int son_age=20;
   int mother_age=35;
   printf("NOT operator\n\n");

   printf("check the not operator %d\n\n",!(father_age>son_age));


}


































