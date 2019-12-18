int main()
{
	int i;

	// Recieve the length of key here.
	while(Nr!=128 && Nr!=192 && Nr!=256)
	{
		printf("Enter the length of Key(128, 192 or 256 only): ");
		scanf("%d",&Nr);
	}
	
	// Calculate Nk and Nr from the recieved value.
	Nk = Nr / 32;
	Nr = Nk + 6;



// Part 1 is for demonstrative purpose. The key and plaintext are given in the program itself.
// 	Part 1: ********************************************************
	
	// The array temp stores the key.
	// The array temp2 stores the plaintext.
	unsigned char temp[16] = {0x00  ,0x01  ,0x02  ,0x03  ,0x04  ,0x05  ,0x06  ,0x07  ,0x08  ,0x09  ,0x0a  ,0x0b  ,0x0c  ,0x0d  ,0x0e  ,0x0f};
	unsigned char temp2[16]= {0x00  ,0x11  ,0x22  ,0x33  ,0x44  ,0x55  ,0x66  ,0x77  ,0x88  ,0x99  ,0xaa  ,0xbb  ,0xcc  ,0xdd  ,0xee  ,0xff};
	
	// Copy the Key and PlainText
	for(i=0;i<Nk*4;i++)
	{
		Key[i]=temp[i];
		in[i]=temp2[i];
	}

//	       *********************************************************




// Uncomment Part 2 if you need to read key and plaintext from the keyboard.
// 	Part 2: ********************************************************
/*
	//Clear the input buffer
	flushall();

	//Recieve the key from the user
	printf("Enter the Key in hexadecimal: ");
	for(i=0;i<Nk*4;i++)
	{
		scanf("%x",&Key[i]);
	}

	printf("Enter the PlainText in hexadecimal: ");
	for(i=0;i<Nb*4;i++)
	{
		scanf("%x",&in[i]);
	}
*/
// 	        ********************************************************


	// The KeyExpansion routine must be called before encryption.
	KeyExpansion();

	// The next function call encrypts the PlainText with the Key using AES algorithm.
	Cipher();

	// Output the encrypted text.
	printf("\nText after encryption:\n");
	for(i=0;i<Nk*4;i++)
	{
		printf("%02x ",out[i]);
	}
	printf("\n\n");
	return 0;
	
}