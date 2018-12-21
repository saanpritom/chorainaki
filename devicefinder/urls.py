from django.urls import path, include
from devicefinder import views

urlpatterns = [
    path('', views.home_page_view, name='home-page'),
    path('contact/', views.contact_page_view, name='contact-page'),
    path('login/', views.login_page_view, name='login-page'),
]
