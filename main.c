#include <stdio.h> 
#include "to_cm.h"
#include "to_km.h"
#include "to_inch.h"
#include "to_foot.h"

int main(){

	double metre = 1.0;

	printf("cm: %.2f\n", to_cm(metre));
	printf("km: %.5f\n", to_km(metre));
	printf("inch: %.2f\n", to_inch(metre));
	printf("foot: %.2f\n", to_foot(metre));

	return 0;
}
