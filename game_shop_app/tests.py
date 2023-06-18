from django.test import TestCase
import django
import os

from .validators import card_validator, card_validity_period, phone_validator


class TestGameShopViewsCase(TestCase):

    def test_about_page(self):
        response = self.client.get("/about/")
        self.assertEqual(response.status_code, 200)

    def test_home_page(self):
        response = self.client.get("")
        self.assertEqual(response.status_code, 200)

    def test_game_details(self):
        response = self.client.get("/games/streggle/")
        self.assertEqual(response.status_code, 200)

    def test_genre_filter_page(self):
        response = self.client.get('/genres/action/')
        self.assertEqual(response.status_code, 200)


class TestGameShopValidatorsCase(TestCase):

    def test_card_number_val(self):
        success_result = card_validator("4561 2612 1234 5467")
        self.assertEqual(True, success_result)

    def test_phone_number(self):
        result = phone_validator('+79051239056')
        self.assertEqual(True, result)

    def test_card_validity_period(self):
        result = card_validity_period('09/24')
        self.assertEqual(True, result)


os.environ.setdefault("DJANGO_SETTINGS_MODULE", "game_shop_project.settings")
django.setup()

