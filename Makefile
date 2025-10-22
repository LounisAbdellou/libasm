NAME     := libasm.a
SRC_DIR  := srcs
OBJ_DIR  := objs

AS       := nasm
AR       := ar rcs
ASFLAGS  := -f elf64

SRCS     := $(wildcard $(SRC_DIR)/*.s)
OBJS     := $(patsubst $(SRC_DIR)/%.s,$(OBJ_DIR)/%.o,$(SRCS))

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	mkdir -p $(OBJ_DIR)
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
