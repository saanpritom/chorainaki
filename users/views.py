# users/views.py
from django.urls import reverse_lazy
from django.views import generic
from django.shortcuts import render

from .forms import CustomUserCreationForm

class SignUp(generic.CreateView):
    form_class = CustomUserCreationForm
    success_url = reverse_lazy('home-page')
    template_name = 'registration/signup-page-view.html'


def login_page_view(request):
    return render(request, 'registration/login.html')
