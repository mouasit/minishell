# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mouassit <mouassit@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/29 13:06:02 by mouassit          #+#    #+#              #
#    Updated: 2021/06/30 09:13:13 by mouassit         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = minishell

SRC = ./libraries/get_next_line/get_next_line.c \
	  ./libraries/get_next_line/get_next_line_utils.c \
      ./srcs/parcing/parcing.c \
	  ./srcs/parcing/token_info.c


LIBFT = ./libraries/libft/libft.a

all : $(NAME)

$(NAME):
	@make -C ./libraries/libft
	@gcc -Wall -Wextra -Werror -I . -fsanitize=address $(SRC) $(LIBFT) -D BUFFER_SIZE=1 -o $(NAME)


clean:
	@make -C ./libraries/libft clean

fclean: clean
	@make -C ./libraries/libft fclean
	@rm -rf $(NAME)

re: fclean all