# Makefile for ARM64 Assembly on Mac M1

# Tools
AS = as
LD = ld
RM = rm -f
MKDIR = mkdir -p

# Flags
ASFLAGS = -arch arm64
LDFLAGS = -lSystem -syslibroot $(shell xcrun --show-sdk-path) -arch arm64 -e _start

# Directories
BUILD_DIR = build
SRC_DIR = src
BIN_DIR = bin

# Files
SOURCES = $(wildcard $(SRC_DIR)/*.s)
OBJECTS = $(patsubst $(SRC_DIR)/%.s,$(BUILD_DIR)/%.o,$(SOURCES))
EXECUTABLES = $(patsubst $(SRC_DIR)/%.s,$(BIN_DIR)/%,$(SOURCES))

# Default target
all: $(EXECUTABLES)

# Rule to assemble .s files into .o files
# Target: build/foo.o, Prerequisite: src/foo.s
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.s
	@$(MKDIR) -p $(@D) # Ensure build directory exists
	@echo ""
	@echo "==== Assembling ===="
	@echo "$< -> $@"
	@echo "=========="
	@echo ""
	$(AS) $(ASFLAGS) $< -o $@

# Rule to link .o files into executables
$(BIN_DIR)/%: $(BUILD_DIR)/%.o
	@$(MKDIR) $(@D) # Ensure bin directory exists
	@echo ""
	@echo "==== Linking ===="
	@echo "$< -> $@"
	@echo "=========="
	@echo ""
	$(LD) $< $(LDFLAGS) -o $@

# Run a specific program
# Example: make run-myprogram (if src/myprogram.s exists)
run-%: $(BIN_DIR)/%
	@echo ""
	@echo "==== Running ===="
	@echo "$<"
	@echo "=========="
	@echo ""
	@$<
	
# Clean build artifacts
clean:
	$(RM) -r $(BUILD_DIR) $(BIN_DIR)

# Create directory structure
setup:
	@$(MKDIR) $(SRC_DIR) $(BUILD_DIR) $(BIN_DIR)

.PHONY: all clean run-% setup