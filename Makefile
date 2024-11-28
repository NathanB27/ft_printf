COMPIL = cc
CFLAGS = -Wall -Werror -Wextra

NAME = libftprintf.a
LIBFT = libft/libft.a

SRCS_DIR = src/
SRCS = ft_utils.c ft_utils2.c ft_printf.c ft_print_hex.c ft_print_ptr.c
OBJS = $(addprefix $(SRCS_DIR), $(SRCS:.c=.o))

LIB_DIR = libft/
LIB_SRCS = ft_itoa.c ft_bzero.c ft_calloc.c
LIB_OBJS = $(addprefix ${LIB_DIR}, ${LIB_SRCS:.c=.o})

%.o: %.c
	$(COMPIL) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
	$(MAKE) -C libft
	ar rcs $(NAME) $(OBJS) $(LIB_OBJS)

all: $(NAME)

exe: re
	$(COMPIL) $(CFLAGS) main.c $(NAME) && ./a.out

clean:
	rm -f $(OBJS)
	$(MAKE) -C libft clean

fclean: clean
	rm -f $(NAME)
	$(MAKE) -C libft fclean

re: fclean all

.PHONY: all clean fclean re

