#include <stdio.h>
#include <stdlib.h>
#ifdef __WATCOMC__
#include <float.h>
#else
#include <fpu_control.h>
#endif
int main(int ac,char **av)
{
	int i,j;
#ifdef __WATCOMC__
#define A
#else
#define A __attribute((__aligned__(16)))
#endif
	typedef float f4[4] A;
	static f4 t A = {1.0f,1.0f,1.0f,1.0f},
		  u A = {0.2f,0.4f,0.6f,0.8f},
		  v A = {3.6789f,3.6789f,3.6789f,3.6789f};

#ifdef __WATCOMC__
	_controlfp(PC_24,MCW_PC);
#else
	fpu_control_t cw;
	_FPU_GETCW(cw);
	cw = (cw & ~_FPU_EXTENDED)|_FPU_SINGLE;
	_FPU_SETCW(cw);
#endif
	j = 1;
	if (ac > 1)
		j = atoi(av[1]);
	printf("%i\n",j);

	for (i = 0; i < j; i++)
		u[0] = (t[0] - u[0]) * (v[0] * u[0]),
		u[1] = (t[1] - u[1]) * (v[1] * u[1]),
		u[2] = (t[2] - u[2]) * (v[2] * u[2]),
		u[3] = (t[3] - u[3]) * (v[3] * u[3]);

	printf("%f %f %f %f\n",u[0],u[1],u[2],u[3]);
	return 0;
}
