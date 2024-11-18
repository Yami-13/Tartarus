#include<stdio.h>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   int OS = "windows";
#endif

#ifdef linux
    int OS = "linux";
#endif

#ifdef macintosh
    int OS = "macos";
#endif

printf(OS);
   
return 0;
}
