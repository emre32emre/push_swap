CC = gcc
NAME = push_swap
LIBFT = ./lib/libft
DIR_SRC = src
DIR_OBJ = temp
HEADERS = incl
FLAGS = -Wall -Wextra -Werror
LIBFTFLAGS = -L$(LIBFT) -lft


SOURCES = 	push_swap/push_swap.c \
			push_swap/algorithm.c \
			push_swap/ft_add_back.c \
			push_swap/ft_stack_new.c \
			push_swap/ft_check_utils.c \
			push_swap/ft_parse.c \
			push_swap/solver_utils_ab.c \
			push_swap/solver_utils_ba.c \
			push_swap/ft_rotate_and_push.c \
			push_swap/operations.c \
			push_swap/operations_2.c \
			push_swap/operations_3.c \
			push_swap/ft_check_dup.c \
			push_swap/ft_check_sorted.c \
			push_swap/ft_error_print.c \
			push_swap/ft_free.c \
			push_swap/lst_utils.c \
			push_swap/lst_utils_2.c \
			push_swap/ft_parse_args_quoted.c \
			push_swap/ft_list_args.c \
			push_swap/ft_check_args.c \
			push_swap/ft_sort_big.c \
			push_swap/ft_sort_three.c \
			push_swap/ft_rotate_type.c \
		
SRCS = $(addprefix $(DIR_SRC)/,$(SOURCES))
OBJS = $(addprefix $(DIR_OBJ)/,$(SOURCES:.c=.o))

all: $(DIR_OBJ) $(NAME)

$(NAME): $(OBJS)
	@make -C $(LIBFT)
	@echo "\033[0;32m\nCompiling libft..."
	@$(CC) $(FLAGS) $(LIBFTFLAGS) -o $@ $^
	@echo "\n\032OK :)\n"

$(DIR_OBJ):
	@mkdir -p temp
	@mkdir -p temp/push_swap

	
$(DIR_OBJ)/%.o: $(DIR_SRC)/%.c $(HEADERS)/$(NAME).h
	@$(CC) $(FLAGS) -I $(HEADERS) -c -o $@ $<
			
clean:
	@echo "\033[0;31m\nDeleting objects..."
	@/bin/rm -f $(OBJS)
	@make -C $(LIBFT) clean
	@/bin/rm -rf $(DIR_OBJ)
fclean: clean
	@/bin/rm -f $(NAME)
	@make -C $(LIBFT) fclean

run: clean all
	./$(NAME)

re: fclean all

.PHONY: all, $(DIR_OBJ), clean, fclean, norm