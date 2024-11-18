#include<stdio.h>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   printf("In Windows");
#endif

#ifdef linux
    printf("In Linux");
#endif

#ifdef macintosh
    printf("In macOS")
#endif
        
    return 0;
}
