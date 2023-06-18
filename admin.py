from django.contrib import admin
from .models import Platform, Genre, Game, GameScreenshots, Publisher, Developer, Language, Order

admin.site.register(Platform)
admin.site.register(Genre)
admin.site.register(Game)
admin.site.register(GameScreenshots)
admin.site.register(Publisher)
admin.site.register(Developer)
admin.site.register(Language)
admin.site.register(Order)
