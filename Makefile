ASM=nasm

SRC_DIR=src
BUILD_DIR=build
OUTPUT_IMAGE=main.img

$(BUILD_DIR)/$(OUTPUT_IMAGE): $(BUILD_DIR)/main.bin
	truncate -s 1440k $(BUILD_DIR)/$(OUTPUT_IMAGE)


$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin