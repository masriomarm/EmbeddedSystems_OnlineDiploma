/*
 * main.c
 *
 *  Created on: Jun 14, 2021
 *      Author: Omar Elmasri
 */

#include <stdio.h>
#include "ArrFnc.h"
#include <string.h>
#include <math.h>

int fact(int n);

int main()
{
	int factorial;
	int n;

	printf("Enter number:");
	fflush(stdin); fflush(stdout);
	scanf("%d",&n);

	factorial=fact(n);

	printf("factorial of %d = %d",n,factorial);

return 0;
}

int fact(int n)
{
	if(n>=1)	return n*fact(n-1);
	else 		return 1;
}
