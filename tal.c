#include <stdio.h>
#include <stdlib.h>
#include <mm3dnow.h>
int main(int ac,char **av)
{
	typedef union {
		__v2sf v;
		float e[2];
	} f2;
	f2 t,u,v,w;
	int i,j;

	j = 1;
	if (ac > 1)
		j = atoi(av[1]);
	printf("%i\n",j);

	t.v = (__v2sf){1.0f,1.0f};
	u.v = (__v2sf){0.2f,0.4f};
	v.v = (__v2sf){3.6789f,3.6789f};

	for (i = 0; i < j; i++) {
		/*
		register __v2sf w = t.v;
		w -= u.v;
		w *= v.v;
		w *= u.v;
		u.v = w;
		u.v = (t.v - u.v) * v.v * u.v;
		*/
		u.v = __builtin_ia32_pfmul(__builtin_ia32_pfmul(__builtin_ia32_pfsub(t.v,u.v),v.v),u.v);
	}
	__builtin_ia32_femms();

	printf("%f %f\n",u.e[0],u.e[1]);
	return 0;
}
