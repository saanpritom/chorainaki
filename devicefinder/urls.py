from django.urls import path, include
from devicefinder import views

urlpatterns = [
    path('', views.home_page_view, name='home-page'),
    path('contact/', views.contact_page_view, name='contact-page'),
    path('login/', views.login_page_view, name='login-page'),
    path('signup/', views.signup_page_view, name='signup-page'),
    path('forget-password/', views.forget_password_page_view, name='forget-password-page'),
    path('search/', views.search_page_view, name='search-page'),
    path('profile/', views.profile_page_view, name='profile-page'),
]
