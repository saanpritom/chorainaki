# api/urls.py
from django.urls import include, path
from users.views import UserListView, UserCreateView
from rest_framework.authtoken import views

urlpatterns = [
    #path('users/', include('users.urls'), name='users-api'),
    path('users/', UserListView.as_view(), name='users-list-view'),
    path('users/create/', UserCreateView.as_view(), name='users-create-view'),
    path('rest-auth/', include('rest_auth.urls')),
    path('api-token-auth/', views.obtain_auth_token, name='api-auth-token'),
]
