from django.shortcuts import render
from django.urls import reverse_lazy
from django.views import generic

# Create your views here.
def home_page_view(request):
    return render(request, 'userwebsite/home-page-view.html')


def contact_page_view(request):
    return render(request, 'userwebsite/contact-page-view.html')


def forget_password_page_view(request):
    return render(request, 'userwebsite/forget-password-page-view.html')


def search_page_view(request):
    return render(request, 'userwebsite/search-page-view.html')


def profile_page_view(request):
    return render(request, 'userwebsite/profile-page-view.html')
