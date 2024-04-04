/*
** EPITECH PROJECT, 2024
** testing.c
** File description:
** test
*/

#include "my.h"

Test(handle_errors_tests, error_return_value)
{
    int argc = 0;
    char **argv = NULL;
    cr_assert(handle_errors(argc, argv) == -1, "errors detected");
}