#include<stdio.h>

int main(int argc, char *argv[])
{

#ifdef _WIN32
   printf("in Windows\n");
#endif

#ifdef linux
    printf("In Linux\n");
#endif

#ifdef macintosh
    printf("In MacOS\n");
#endif

    return 0;
}

