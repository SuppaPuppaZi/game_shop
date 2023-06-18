from django.contrib.auth.models import User
from django.db import models


class Genre(models.Model):
    genre_name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.genre_name

    objects = models.Manager


class Platform(models.Model):
    platform_name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.platform_name

    objects = models.Manager


class Developer(models.Model):
    developer_name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.developer_name

    objects = models.Manager


class Publisher(models.Model):
    publisher_name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.publisher_name

    objects = models.Manager


class Language(models.Model):
    language_name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.language_name

    objects = models.Manager


class GameScreenshots(models.Model):
    title = models.CharField(max_length=100)
    image = models.ImageField(blank=True, null=True, upload_to="screenshots/")
    description = models.TextField()
    game = models.ForeignKey("Game", blank=True, null=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.title

    objects = models.Manager


class Game(models.Model):
    game_name = models.CharField(max_length=100)
    description = models.TextField()
    genres = models.ManyToManyField(Genre)
    release_date = models.DateField()
    developer = models.ForeignKey("Developer", blank=True, null=True, on_delete=models.PROTECT)
    publisher = models.ForeignKey("Publisher", blank=True, null=True, on_delete=models.PROTECT)
    platforms = models.ManyToManyField(Platform)
    languages = models.ManyToManyField(Language)
    price = models.FloatField(blank=True, null=True)
    discount_price = models.FloatField(blank=True, null=True)
    minimum_requirements = models.TextField()
    recommended_requirements = models.TextField()
    image = models.ImageField(blank=True, null=True, upload_to="games/")
    slug = models.SlugField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.game_name

    objects = models.Manager


class Order(models.Model):
    MY_CHOICES = (
        ('Обработан', 'Обработан'),
        ('Не обработан', 'Не обработан'),
    )
    user = models.ForeignKey(User, blank=True, null=True, on_delete=models.PROTECT)
    order_items = models.JSONField(blank=True, null=True)
    card = models.CharField(max_length=20, blank=True, null=True)
    cvv_code = models.PositiveIntegerField(blank=True, null=True)
    card_validity_period = models.CharField(max_length=5, blank=True, null=True)
    total_price = models.FloatField(blank=True, null=True)
    order_date = models.DateField(blank=True, null=True)
    status = models.CharField(max_length=15, choices=MY_CHOICES, blank=True, null=True)

    def __str__(self):
        return f"{self.user}'s order {self.order_date}"

    objects = models.Manager


