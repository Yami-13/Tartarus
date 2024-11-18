#include<stdio.h>
#include<string>
#include<iostream>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   std::string OS = "Windows",
   printf("Your OS is: Windows";
#endif

#ifdef linux
    std::string OS = "Linux",
    printf("Your OS is: Linux");
#endif

#ifdef macintosh
    std::string OS = "macOS",
    printf("Your OS is: macOS");
#endif
return 0;
}

