/*
** EPITECH PROJECT, 2024
** main.c
** File description:
** main
*/

#include <my.h>


int handle_errors(int argc, char **argv)
{
    if (argc != 1 || argv == NULL)
        return 84;
    return 0;
}
int main(const int argc, char **argv)
{
    return handle_errors(argc, argv);
}