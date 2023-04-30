/*
* client.c - реализация клиента
*
* чтобы запустить пример, необходимо:
* 1. запустить программу server на одной консоли;
* 2. запустить программу client на другой консоли.
*/
#include "common.h"
#define MESSAGE "Hello Server!!!\n"
int main()
{
   int writefd; /* дескриптор для записи в FIFO */
   int msglen;
   
   
   /* баннер */
   printf("FIFO Client...\n");
   
   
   /* получим доступ к FIFO */
   if((writefd = open(FIFO_NAME, O_WRONLY)) < 0)
   {
      fprintf(stderr, "%s: Невозможно открыть FIFO (%s)\n",
      __FILE__, strerror(errno));
      exit(-1);
   }
   

   
   for(int k=0; k <= 5; k++)
   {
      time_t mytime = time(NULL);
      struct tm *now = localtime(&mytime);
      char str[20];
      strftime(str, sizeof(str), "%T", now);
      printf("Time: %s\n", str);
      strcat(str, "\n");
      
      
      /* передадим сообщение серверу */
      msglen = strlen(str);
      
      if(write(writefd, str, msglen) != msglen)
      {
         fprintf(stderr, "%s: Ошибка записи в FIFO (%s)\n",
         __FILE__, strerror(errno));
         exit(-2);
      }
      
      sleep(5);
   }
   
   
   
   
   
   /* закроем доступ к FIFO */
   close(writefd);
   exit(0);
}

