#include<stdio.h>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   string OS = "Windows";
   printf("Your OS is: Windows";
#endif

#ifdef linux
    string OS = "Linux";
    printf("Your OS is: Linux");
#endif

#ifdef macintosh
    string OS = "macOS";
    printf("Your OS is: macOS");
#endif
return 0;
}

