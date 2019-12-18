#include <stdio.h>
#include <stdlib.h>
int Nr;
int Nk;
unsigned char out[16];

void Cipher(int Nr,int Nk);

int main()
{
	Nr=128;

	Cipher(Nr,Nk);

	// Output the encrypted text.
	printf("\nText after encryption:\n");
		for(int i=0;i<Nk*4;i++)
		{
			printf("%02x ",out[i]);
		}
		printf("\n\n");
	return 0;
}
