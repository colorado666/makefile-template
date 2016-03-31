#include "main.h"

int main(int argc, char const *argv[])
{
	printf("%s: %s@%d: %s\n", PRJ_NAME, __FILE__,__LINE__ , __func__ );

	fun_1();
	fun_2();

    printf("submod 1 = %d, submod 2 = %d\n",  SUB_MOD1, SUB_MOD2 );

	return 0;
}
