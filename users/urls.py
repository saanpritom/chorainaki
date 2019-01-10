# users/urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('login/', views.LoginPageView.as_view(), name='login-page'),
    path('oldsignup/', views.SignUp.as_view(), name='old-signup-page'),
    path('signup/', views.SignUpView.as_view(), name='signup-page'),

    #API View
    #path('', views.UserListView.as_view(), name='users-list'),
]
