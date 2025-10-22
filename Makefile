NAME     := libasm.a
SRC_DIR  := srcs
OBJ_DIR  := objs
TEST_DIR := test

CC       := gcc
AS       := nasm
AR       := ar rcs
CFLAGS   := -L. -lasm
ASFLAGS  := -f elf64

SRCS      := $(wildcard $(SRC_DIR)/*.s)
TEST      := $(wildcard $(TEST_DIR)/*.c)
ASM_OBJS  := $(patsubst $(SRC_DIR)/%.s,$(OBJ_DIR)/asm/%.o,$(SRCS))
TEST_OBJS := $(patsubst $(TEST_DIR)/%.c,$(OBJ_DIR)/test/%.o,$(TEST))

all: $(NAME)

$(NAME): $(OBJ_DIR) | $(ASM_OBJS)
	$(AR) $(NAME) $(ASM_OBJS)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)
	mkdir -p $(OBJ_DIR)/asm
	mkdir -p $(OBJ_DIR)/test

$(OBJ_DIR)/asm/%.o: $(SRC_DIR)/%.s
	$(AS) $(ASFLAGS) $< -o $@

$(OBJ_DIR)/test/%.o: $(TEST_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

test: $(NAME) | $(TEST_OBJS)
	$(CC) $(TEST_OBJS) $(CFLAGS) -o tester 
	./tester
	rm -f tester

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all test clean fclean re
