#include <stdio.h>
#include <stdlib.h>
//#include <xmmintrin.h>
typedef float __v4sf __attribute__ ((__vector_size__ (16),aligned(16)));
int main(int ac,char **av)
{
	int i,j;
#define A __attribute__((aligned(16)))
	typedef union {
		__v4sf v;
		float e[4];
	} f4 A;
	static f4 t A,u A,v A;

	j = 1;
	if (ac > 1)
		j = atoi(av[1]);
	printf("%i\n",j);

	t.v = (__v4sf){1.0f,1.0f,1.0f,1.0f};
	u.v = (__v4sf){0.2f,0.4f,0.6f,0.8f};
	v.v = (__v4sf){3.6789f,3.6789f,3.6789f,3.6789f};

	for (i = 0; i < j; i++) {
		// u.v = (t.v - u.v) * (v.v * u.v);
		u.v = __builtin_ia32_mulps(__builtin_ia32_subps(t.v,u.v),__builtin_ia32_mulps(v.v,u.v));
	}
	printf("%f %f %f %f\n",u.e[0],u.e[1],u.e[2],u.e[3]);
	return 0;
}
