# Define tools
CC = gcc
CXX = g++
RM = rm -f
MKDIR = mkdir -p
CFLAGS = -g -o -Wall

# Target this makefile is building.
TARGET = out
BUILD_PATH = objs

SRC_PATH = .

# Include all build.mk defines source files.
SRCS :=
INCLUDE_DIRS :=
include $(SRC_PATH)/main/build.mk
include $(SRC_PATH)/submod1/build.mk
include $(SRC_PATH)/submod2/build.mk

# CFLAGS
CFLAGS += $(patsubst %,-I$(SRC_PATH)/%,$(INCLUDE_DIRS))

#LDFLAGS
LDFLAGS =
#LDFLAGS += -L$(LIBS_DIR)
#LDFLAGS += -lpthread

# Collect all object files
ALLOBJ += $(addprefix $(BUILD_PATH)/, $(SRCS:.c=.o))

# Target
.PHONY: all clean
all: clean $(TARGET)

$(TARGET) : $(ALLOBJ)
	@echo Link output: $@
	@$(CC) $(CFLAGS) $(ALLOBJ) --output $@
	@echo

# C compiler to build .o from .c in $(BUILD_DIR)
$(BUILD_PATH)/%.o : $(SRC_PATH)/%.c
	@echo Building c file: $<
	@$(MKDIR) $(dir $@)
	@$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD_PATH)/%.o : $(SRC_PATH)/%.cpp
	@echo Building cpp file: $<
	@$(MKDIR) $(dir $@)
	@$(CXX) $(CFLAGS) -c -o $@ $<

# Other Targets
clean:
	@echo remove all objs .....
	@$(RM) $(ALLOBJ) $(TARGET)
	@echo


