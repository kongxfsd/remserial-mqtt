PWD 	:= `pwd`
CC 		= gcc

SRC_PATH 	:= .
CFLAGS 		= -Os

IOT_OBJS 	= $(wildcard $(SRC_PATH)/*.c $(SRC_PATH)/MQTTPacket/*.c)

targets = mqtt4320


LINC 	+= -I$(PWD)/MQTTPacket

all:$(targets)

$(targets):$(IOT_OBJS)
	$(CC) $(CFLAGS) $(IOT_OBJS) $(LINC) -lpthread -lm -o $@ 

clean:
	rm -f *.o $(targets)

