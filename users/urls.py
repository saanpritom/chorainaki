# users/urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('login/', views.login_page_view, name='login-page'),
    path('signup/', views.SignUp.as_view(), name='signup-page'),
]
