# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nmaquet <nmaquet@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/14 18:27:38 by nmaquet           #+#    #+#              #
#    Updated: 2023/01/14 18:56:57 by nmaquet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC =   ft_atoi.c \
        ft_bzero.c \
        ft_calloc.c \
        ft_isalnum.c \
        ft_isalpha.c \
        ft_isascii.c \
        ft_isdigit.c \
        ft_isprint.c \
        ft_itoa.c \
        ft_memchr.c \
        ft_memcmp.c \
        ft_memcpy.c \
        ft_memmove.c \
        ft_memset.c \
        ft_putchar_fd.c \
        ft_putendl_fd.c \
        ft_putnbr_fd.c \
        ft_putstr_fd.c \
        ft_split.c \
        ft_strchr.c \
        ft_strdup.c \
        ft_striteri.c \
        ft_strjoin.c \
        ft_strlcat.c \
        ft_strlcpy.c \
        ft_strlen.c \
        ft_strmapi.c \
        ft_strncmp.c \
        ft_strnstr.c \
        ft_strrchr.c \
        ft_strtrim.c \
        ft_substr.c \
        ft_tolower.c \
        ft_toupper.c \
		
BONUS_PART =    ft_lstnew.c \
                ft_lstadd_front.c \
                ft_lstsize.c \
                ft_lstlast.c \
                ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c \
                
HEAD = includes
OBJ = ${SRC:.c=.o}
OBJB =  ${BONUS_PART:.c=.o}
FLAGS = -Wall -Wextra -Werror
.c.o:
	gcc ${FLAGS} -c $< -o ${<:.c=.o} -I ${HEAD}
$(NAME): ${OBJ}
	ar rcs ${NAME} ${OBJ}
all : $(NAME)
bonus: ${NAME} ${OBJB}
	ar rc ${NAME} ${OBJB}
	ranlib libft.a
clean:
	rm -f ${OBJ}
fclean: clean
	rm -f ${NAME}
re: fclean all
.PHONY : all clean fclean re
