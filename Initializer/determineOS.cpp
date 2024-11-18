#include<stdio.h>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   printf("in Windows");
#endif

#ifdef linux
    printf("In Linux");
#endif

#ifdef macintosh
    printf("In MacOS");
#endif

    return 0;
}
