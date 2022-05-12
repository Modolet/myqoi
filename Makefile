CC := gcc
CFLAGS_BENCH := -std=gnu99 -O3
LFLAGS_BENCH := -lpng
CFLAGS_CONV := -std=c99 -O3

TARGET_BENCH := qoibench
TARGET_CONV := qoiconv

all := $(TARGET)

$(TARGET_BENCH):$(TARGET_BENCH).c $(LFLAGS_BENCH)
	$(CC) $(CFLAGS_BENCH) $(TARGET_BENCH).c -o $(TARGET_BENCH) $(LFLAGS_BENCH)

$()
$(TARGET_CONV):$(TARGET_CONV).c
	$(CC) $(CFLAGS_CONV) $(TARGET_CONV).c -o $(TARGET_CONV)

.PHONY: clean
clean:
	$(RM) $(TARGET) $(OBJS) $(DEPS)
-include $(DEPS)
