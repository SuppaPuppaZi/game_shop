from django.urls import path
from favourites import views

urlpatterns = [
    path('', views.favourites, name='favourites'),
    path('add/<int:id>', views.add, name='add_favourites'),
    path('remove/<int:id>', views.remove, name="remove_favourites"),
]
