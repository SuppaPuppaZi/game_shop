from random import choice, randint


def letter_checker(value):
    for i in str(value):
        if i.isalpha():
            return True


def code_generator(codes_counter):

    created_codes = []
    codes_count = codes_counter
    code_length = 15
    sep = '-'
    symbols = \
            [
                "A", "B", "C", "D", "E", "F", "G", "H", "I",
                "J", "K", "L", "M", "N", "O", "P", "Q", "R",
                "S", "T", "U", "V", "W", "X", "Y", "Z",
                "1", "2", "3", "4", "5", "6", "7", "8", "9"
            ]

    for code in range(codes_count):
        code = ""
        for code_elem in range(code_length):
            code += sep if len(code) == code_length // 2 else choice(symbols)

        created_codes.append(code)

    return created_codes
