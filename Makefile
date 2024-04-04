##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## Makefile
##

CFLAGS = -W -Wall -Werror -Wextra

CPPFLAGS	+=	-I./include/
LDFLAGS		+=	-L/path/to/criterion/libraries -lcriterion

SRC =	src/main.c	\
		test_unit/testing.c		\

NAME = exec

OBJ =	$(SRC:.c=.o)

all:	$(OBJ)
	gcc $(OBJ) -o $(NAME) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS)

compile_tests:
		gcc -o unit_testing $(SRC) \
		$(CPPFLAGS) --coverage -lcriterion
		gcc -o integration_testing $(SRC) \
		$(CPPFLAGS) --coverage -lcriterion

tests_run:    compile_tests
		./unit_testing
		./integration_testing

tests:    tests_run
		gcovr --exclude tests/
		gcovr --exclude tests/ --branches

clean:
		rm -f $(OBJ)
		rm -f *.o
		rm -f *~
		rm -f #*
		find -name "*.o" -delete
		find -name "*.gc*" -delete

fclean: clean
		rm -f $(NAME) unit_testing integration_testing

re: fclean all

.PHONY: all clean fclean re
