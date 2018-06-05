#include <stdio.h>
int main(int ac,char **av)
{
	int i,j;
#ifndef EC
#define REAL double
#define R(X) X##e0
#else
#define REAL _Decimal64
#define R(X) X##dd
#endif
	typedef REAL f4[4];
	static f4 t = {R(1.0),R(1.0),R(1.0),R(1.0)},
		  u = {R(0.2),R(0.4),R(0.6),R(0.8)},
		  v = {R(3.6789),R(3.6789),R(3.6789),R(3.6789)};

	j = 1;
	if (ac > 1)
		j = atoi(av[1]);
	printf("%i\n",j);

	for (i = 0; i < j; i++)
		u[0] = (t[0] - u[0]) * (v[0] * u[0]),
		u[1] = (t[1] - u[1]) * (v[1] * u[1]),
		u[2] = (t[2] - u[2]) * (v[2] * u[2]),
		u[3] = (t[3] - u[3]) * (v[3] * u[3]);

#ifndef EC
	printf("%-21.14a %-21.14a %-21.14a %-21.14a\n",u[0],u[1],u[2],u[3]);
	printf("%-21.16f %-21.16f %-21.16f %-21.16f\n",u[0],u[1],u[2],u[3]);
	printf("%-21.15e %-21.15e %-21.15e %-21.15e\n",u[0],u[1],u[2],u[3]);
#else
	printf("%-21.14Da %-21.14Da %-21.14Da %-21.14Da\n",u[0],u[1],u[2],u[3]);
	printf("%-21.16Df %-21.16Df %-21.16Df %-21.16Df\n",u[0],u[1],u[2],u[3]);
	printf("%-21.15De %-21.15De %-21.15De %-21.15De\n",u[0],u[1],u[2],u[3]);
#endif
	return 0;
}
