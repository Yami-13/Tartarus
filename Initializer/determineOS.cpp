#include<stdio.h>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   int OS = "Windows";
   printf("Your OS is: Windows";
#endif

#ifdef linux
    int OS = "Linux";
    printf("Your OS is: Linux");
#endif

#ifdef macintosh
    int OS = "macOS";
    printf("Your OS is: macOS");
#endif
return 0;
}

