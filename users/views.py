# users/views.py
from django.urls import reverse_lazy
from django.views import generic
from django.shortcuts import render
from rest_framework import generics
from rest_framework.renderers import TemplateHTMLRenderer

from .forms import CustomUserCreationForm
from .models import CustomUser
from .serializers import UserSerializer, SignUpFormSerializer

"""class SignUp(generic.CreateView):
    form_class = CustomUserCreationForm
    success_url = reverse_lazy('home-page')
    template_name = 'registration/signup-page-view.html'"""


class SignUp(generics.CreateAPIView):
    serializer_class = SignUpFormSerializer
    template_name = 'registration/signup-page-view.html'


def login_page_view(request):
    return render(request, 'registration/login.html')


class UserListView(generics.ListCreateAPIView):
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer
