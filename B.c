#include <stdio.h>
#include <stdlib.h>
#include "B.h"
#include "A.h"

void helloFromB()
{
	printf("Hello From helloFromB()\n");
	helloFromA();;
}
