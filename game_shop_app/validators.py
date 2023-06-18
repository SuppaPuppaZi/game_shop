from django.core.exceptions import ValidationError

from game_shop_project.functions import letter_checker


def card_validator(card_number):

    card_number = card_number.replace(" ", "").strip()

    if letter_checker(card_number):
        raise ValidationError("Номер карты не должен содержать букв")

    last_num = int(card_number[-1])

    if len(card_number) < 16:
        raise ValidationError("Номер карты должен состоять минимум из 16 цифр")

    sum = 0
    res = 0 if(len(card_number) - 1) % 2 else 1

    for i, num in enumerate(card_number[:-1]):
        num = int(num)
        if i % 2 == res:
            sum += num * 2 if (num * 2) < 10 else (num * 2) - 9
        else:
            sum += num

    if (sum + last_num) % 10 != 0:
        raise ValidationError("Вы неправильно ввели номер карты")

    return True


def card_validity_period(period):

    if 5 < len(period) > 5 or period.count('/') == 0:
        raise ValidationError('Срок действия введен неверно(формат:ММ/ГГ)')

    month = period[1:2] if int(period[0] == 0) else period[:2]
    year = period[-2:]

    if letter_checker(month):
        raise ValidationError('Срок действия не должен включать в себя буквы')

    if letter_checker(year):
        raise ValidationError('Срок действия не должен включать в себя буквы')

    if (int(month) < 1 or int(month) > 12) or int(year) < 1:
        raise ValidationError('Неправильный введен месяц или год')

    return True


def phone_validator(phone_number):

    if phone_number[0] != "+":
        raise ValidationError('Номер телефона должен начинаться с "+"')

    if letter_checker(phone_number):
        raise ValidationError("Номер телефона не должен содержать букв")

    return True
