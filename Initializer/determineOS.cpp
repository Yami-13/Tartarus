#include<stdio.h>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   int OS = "Windows";
   printf("Your OS is: ", OS);
#endif

#ifdef linux
    int OS = "Linux";
    printf("Your OS is: ", OS);
#endif

#ifdef macintosh
    int OS = "macOS";
    printf("Your OS is: ", OS);
#endif
return 0;
}

