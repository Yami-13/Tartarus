#include<iostream>
#include<stdio.h>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   int OS = "Windows";
#endif

#ifdef linux
    int OS = "Linux";
#endif

#ifdef macintosh
    int OS = "macOS";
#endif

printf("Your OS is: ", OS);
return 0;
}
