CC     = gcc
CFLAGS := -Wall -Werror --std=gnu99 -g3

ARCH := $(shell uname)
ifneq ($(ARCH),Darwin)
  LDFLAGS += -lpthread
endif

all: client server

client: client.c
	$(CC) -o $@ $(CFLAGS) $^ $(LDFLAGS)

server: server.c
	$(CC) -o $@ $(CFLAGS) $^ $(LDFLAGS)

%.o : %.c
	$(CC) -c -o $@ $(CFLAGS) $<

.PHONY: clean

clean:
	rm -fr *.o client server