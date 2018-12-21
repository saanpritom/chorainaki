from django.shortcuts import render

# Create your views here.
def home_page_view(request):
    return render(request, 'home-page-view.html')


def contact_page_view(request):
    return render(request, 'contact-page-view.html')


def login_page_view(request):
    return render(request, 'login-page-view.html')
