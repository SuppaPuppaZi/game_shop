from django.urls import path, include
from game_shop_app import views

urlpatterns = [
    path('', views.home_page, name='home'),
    path('games/<slug:game_slug>/', views.game_details, name="game_details"),
    path('genres/<slug:genre_slug>/', views.by_genre, name="by_genre"),
    path('platforms/<slug:platform_slug>/', views.by_platform, name="by_platform"),
    path('developers/<slug:developer_slug>/', views.by_developers, name="by_developer"),
    path('publishers/<slug:publisher_slug>/', views.by_publishers, name="by_publisher"),
    path('languages/<slug:language_slug>/', views.by_languages, name="by_language"),
    path('price/', views.by_price, name='by_price'),
    path('profile/', views.profile, name="profile"),
    path('profile/edit/', views.profile_edit, name='profile_edit'),
    path('about/', views.about, name='about'),
    path('favourites/', include('favourites.urls')),
    path('cart/', include('cart.urls')),
]


