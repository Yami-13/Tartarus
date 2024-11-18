#include<stdio.h>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   printf("in Windows\n");
#endif

#ifdef linux
    printf("In Linux\n");
    printf("Please enter the following command in your terminal to begin update:\n");
    printf("sudo git https://github.com/Yami-13/Tartarus/tree/main/Update\n");
    printf("You may need to install or update git in order for this to work!\n");
    printf("Thank you for using the automated updating service! Have a good day!");
#endif

#ifdef macintosh
    printf("In MacOS\n");
#endif

    return 0;
}

