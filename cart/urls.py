from django.urls import path
from cart import views

urlpatterns = [
    path('', views.cart, name='cart'),
    path('add/<int:id>', views.add, name='add_item'),
    path('remove/<int:id>', views.remove, name="remove_item"),
    path('cart', views.remove_all, name="remove_all"),
    path('purchase/', views.purchase, name='purchase'),
    path('purchase/success/', views.purchase_success, name='purchase_success'),
    path('purchase/failed/', views.purchase_failed, name='purchase_failed'),
]
