# This file is a makefile included from the top level makefile which
# defines the sources built for the target.

# Define the prefix to this directory.
# Note: The name must be unique within this build and should be
#       based on the root of the project
MODULE_SRC_PATH = main

# Add include to all objects built for this target
INCLUDE_DIRS += $(MODULE_SRC_PATH)

# C source files included in this build.
SRCS +=  $(MODULE_SRC_PATH)/main.c
