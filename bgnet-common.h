#ifndef BGNET
#define BGNET

// ref: https://beej.us/guide/bgnet/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <netdb.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>

// common server-client port
// ref: https://en.wikipedia.org/wiki/George_P._Burdell
#define PORT "1927"

#endif /* BGNET */
