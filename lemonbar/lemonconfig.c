#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistdio.h>

char *Date(){
  time_t time_now = time(NULL);
  return ctime(&time_now);
}

int main(int argc,char **argv){

  printf("%%{c}");
  printf("%s",Date());
  printf("%%{c}");

  // system("ls
  printf("\n");
  return 0;
}
