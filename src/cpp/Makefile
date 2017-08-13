CC=clang++
CLIENT_EXEC=client
SERVER_EXEC=server
ARGS=-v -Wall
ZMQ_BASE_DIR=/usr/local/Cellar/zeromq/4.2.2/
INCLUDES=-I${ZMQ_BASE_DIR}/include
LIBS=-L${ZMQ_BASE_DIR}/lib -lzmq

server: server.cpp
	$(CC) $(ARGS) $(LIBS) $(INCLUDES) -o $(SERVER_EXEC) $<

client: client.cpp
	$(CC) $(ARGS) $(LIBS) $(INCLUDES) -o $(CLIENT_EXEC) $<

all: server client

clean:
	rm $(SERVER_EXEC) $(CLIENT_EXEC)

