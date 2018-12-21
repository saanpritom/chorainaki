from django.shortcuts import render

# Create your views here.
def home_page_view(request):
    return render(request, 'home-page-view.html')


def contact_page_view(request):
    return render(request, 'contact-page-view.html')


def login_page_view(request):
    return render(request, 'login-page-view.html')


def signup_page_view(request):
    return render(request, 'signup-page-view.html')


def forget_password_page_view(request):
    return render(request, 'forget-password-page-view.html')


def search_page_view(request):
    return render(request, 'search-page-view.html')


def profile_page_view(request):
    return render(request, 'profile-page-view.html')
