# users/views.py
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse_lazy
from django.views import generic, View
from django.shortcuts import render, redirect
from rest_framework import generics
from rest_framework.renderers import TemplateHTMLRenderer
from rest_framework.response import Response
from rest_framework import status
import requests, json
from django.contrib.auth.hashers import make_password

from .forms import CustomUserCreationForm, CustomUserLoginForm
from .models import CustomUser
from .serializers import UserSerializer

class SignUp(generic.CreateView):
    form_class = CustomUserCreationForm
    success_url = reverse_lazy('home-page')
    template_name = 'userwebsite/registration/old-signup.html'


def login_page_view(request):
    return render(request, 'userwebsite/registration/login.html')


class LoginPageView(View):
    form_class = CustomUserLoginForm
    initial = {'key': 'value'}
    template_name = 'userwebsite/registration/login.html'

    def get(self, request, *args, **kwargs):
        form = self.form_class(initial=self.initial)
        return render(request, self.template_name, {'form': form, 'login_errors': False})

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        if form.is_valid():
            data = {"username": request.POST['username'], "password": request.POST['password']}
            url = 'http://127.0.0.1:8000/api/v1/rest-auth/login/'
            #response = requests.post(url, verify=False, json=data)
            response = requests.post(url, data=json.dumps(data), headers={'Content-Type':'application/json'})
            if response.status_code == 200:
                return redirect('home-page')
                #return render(request, self.template_name, {'form': form, 'login_errors': True, 'response': response})
            else:
                return render(request, self.template_name, {'form': form, 'login_errors': True})


class SignUpView(View):
    form_class = CustomUserCreationForm
    initial = {'key': 'value'}
    template_name = 'userwebsite/registration/signup-page-view.html'

    def get(self, request, *args, **kwargs):
        form = self.form_class(initial=self.initial)
        return render(request, self.template_name, {'form': form})


    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        if form.is_valid():
            # <process form cleaned data>
            #hasing password
            password = make_password(request.POST['password1'])
            data = {"full_name": request.POST['full_name'],
                    "username": request.POST['username'],
                    "mobile_number": request.POST['mobile_number'],
                    "address": request.POST['address'],
                    "password": password}
            url = 'http://127.0.0.1:8000/api/v1/users/create/'
            response = requests.post(url, verify=False, json=data)
            if response.status_code == 201:
                return HttpResponse('Yay, it worked')
            return HttpResponse('Could not save data')

        return render(request, self.template_name, {'form': form})


class UserListView(generics.ListCreateAPIView):
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer


class UserCreateView(generics.CreateAPIView):
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer

    def post(self, request, format=None):
        serializer = UserSerializer(data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
