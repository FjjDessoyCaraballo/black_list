NAME		=	bl

COMP		=	gcc
FLAGS		=	-Wall -Wextra -Werror -g -pedantic -fsanitize=address

SRC_DIR		=	src
OBJ_DIR		=	obj

SRCS 		= $(SRC_DIR)/main.c\

OBJS 		= $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS))

all: $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	@$(COMP) $(FLAGS) -c $< -o $@

$(NAME): $(OBJS)
	@$(COMP) $(FLAGS) $(OBJS) -o $(NAME)

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

clean:
	@rm -rf $(OBJS)
	@rm -rf $(OBJ_DIR)
	@echo "cleaning objects"

fclean: clean
	@rm -rf $(NAME)
	@echo "removing $(NAME)"

re: fclean all

.PHONY: all clean fclean re