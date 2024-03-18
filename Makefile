# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alex <alex@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/21 12:51:23 by ahiguera          #+#    #+#              #
#    Updated: 2024/03/18 20:22:41 by alex             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

CFLAGS	= -c -Wall -Wextra -Werror

SRC-DIR	= ./src/
IS-DIR		= 		$(SRC-DIR)ft_is/
MEM-DIR		= 		$(SRC-DIR)ft_mem/
FD-DIR		= 		$(SRC-DIR)ft_fd/
LST-DIR		= 		$(SRC-DIR)ft_lst/
STR-DIR		= 		$(SRC-DIR)ft_str/
PRINTF-DIR 	= 		$(SRC-DIR)printf/
GNL-DIR 	= 		$(SRC-DIR)get_next_line/

SRC		=	$(FD-DIR)ft_putchar_fd.c	\
			$(FD-DIR)ft_putendl_fd.c	\
			$(FD-DIR)ft_putnbr_fd.c		\
			$(FD-DIR)ft_putstr_fd.c		\
										\
			$(IS-DIR)ft_isalnum.c		\
			$(IS-DIR)ft_isascii.c		\
			$(IS-DIR)ft_isalpha.c		\
			$(IS-DIR)ft_isprint.c		\
			$(IS-DIR)ft_isdigit.c		\
			$(IS-DIR)ft_isspace.c		\
										\
			$(MEM-DIR)ft_memchr.c		\
			$(MEM-DIR)ft_memcmp.c		\
			$(MEM-DIR)ft_memcpy.c		\
			$(MEM-DIR)ft_memmove.c		\
			$(MEM-DIR)ft_memset.c		\
										\
			$(STR-DIR)ft_strchr.c		\
			$(STR-DIR)ft_strdup.c		\
			$(STR-DIR)ft_striteri.c		\
			$(STR-DIR)ft_strjoin.c		\
			$(STR-DIR)ft_strlcat.c		\
			$(STR-DIR)ft_strlcpy.c		\
			$(STR-DIR)ft_strlen.c		\
			$(STR-DIR)ft_strmapi.c		\
			$(STR-DIR)ft_strncmp.c		\
			$(STR-DIR)ft_strnstr.c		\
			$(STR-DIR)ft_strrchr.c		\
			$(STR-DIR)ft_strtrim.c		\
			$(STR-DIR)ft_substr.c		\
										\
			$(SRC-DIR)ft_atoi.c			\
			$(SRC-DIR)ft_atol.c			\
			$(SRC-DIR)ft_bzero.c		\
			$(SRC-DIR)ft_calloc.c		\
			$(SRC-DIR)ft_itoa.c			\
			$(SRC-DIR)ft_split.c		\
			$(SRC-DIR)ft_toupper.c		\
			$(SRC-DIR)ft_tolower.c		\
										\
		$(LST-DIR)ft_lstnew.c			\
		$(LST-DIR)ft_lstadd_front.c		\
 		$(LST-DIR)ft_lstsize.c			\
		$(LST-DIR)ft_lstadd_back.c  	\
 		$(LST-DIR)ft_lstlast.c			\
		$(LST-DIR)ft_lstdelone.c		\
 		$(LST-DIR)ft_lstclear.c			\
		$(LST-DIR)ft_lstiter.c			\
 		$(LST-DIR)ft_lstmap.c			\
										\
		$(PRINTF-DIR)ft_printf.c		\
		$(PRINTF-DIR)puts.c				\
		$(PRINTF-DIR)write.c			\
										\
		$(GNL-DIR)get_next_line.c		\
		$(GNL-DIR)get_next_line_utils.c	\

OBJ		= 	$(SRC:.c=.o)

all: 		$(NAME)

$(NAME): 	$(OBJ)
				@ar -rcs $(NAME) $(OBJ)
				@rm -f *.0
				@echo "\033[1;33m ** Libft compiled O.O **"

%.o:		%.c
				@gcc $(CFLAGS) -o $@ $<

clean:
				@rm -f $(OBJ)

fclean:		clean
				@rm -f ./$(NAME)
				@echo "\033[1;35m Libft deleted -_-"

re:			fclean all

.PHONY:		all clean fclean re