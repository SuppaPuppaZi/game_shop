from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from django import forms
from django.contrib.auth.models import User

from .validators import card_validator, phone_validator, card_validity_period


class RegisterForm(UserCreationForm):

    class Meta(UserCreationForm.Meta):
        fields = UserCreationForm.Meta.fields + ("first_name", "last_name", "email", )

    def clean_email(self): ##№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№№ Оптимизация??
        email = self.cleaned_data["email"]
        username = self.cleaned_data["username"]
        if User.objects.filter(email=email).exclude(username=username).exists():
            raise forms.ValidationError('Такая почта уже используется.')

        return email


class EditProfileForm(UserChangeForm):
    password = None

    class Meta:
        model = User
        fields = ["first_name", "last_name", "username", "email"]

    def clean_email(self):
        email = self.cleaned_data["email"]
        username = self.cleaned_data["username"]
        if User.objects.filter(email=email).exclude(username=username).exists():
            raise forms.ValidationError('Такая почта уже используется.')

        return email


class PurchaseForm(forms.Form):
    first_name = forms.CharField(max_length=50, required=True, label='Имя')
    last_name = forms.CharField(max_length=50, required=True, label='Фамилия')
    phone = forms.CharField(max_length=12, label='Телефон')
    email = forms.EmailField(required=True, label='Почта')
    card_number = forms.CharField(required=True, label='Номер карты')
    cvv_num = forms.IntegerField(min_value=100, max_value=999, required=True, label='СVV-Номер',
                                 help_text='Три цифры на обратной стороне карточки')
    card_validity_period = forms.CharField(max_length=5, required=True, label='Срок действия карты')

    def clean_card_number(self):
        card_number = self.cleaned_data['card_number']
        card_validator(card_number)

        return card_number

    def clean_phone(self):
        phone = self.cleaned_data["phone"]
        phone_validator(phone)

        return phone

    def clean_card_validity_period(self):
        period = self.cleaned_data['card_validity_period']
        card_validity_period(period)

        return period


