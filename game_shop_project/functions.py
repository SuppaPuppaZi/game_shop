from random import choice, randint


def letter_checker(value):
    for i in str(value):
        if i.isalpha():
            return True
