# users/views.py
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse_lazy
from django.views import generic, View
from django.shortcuts import render
from rest_framework import generics
from rest_framework.renderers import TemplateHTMLRenderer
from rest_framework.response import Response
from rest_framework import status
import requests

from .forms import CustomUserCreationForm
from .models import CustomUser
from .serializers import UserSerializer

class SignUp(generic.CreateView):
    form_class = CustomUserCreationForm
    success_url = reverse_lazy('home-page')
    template_name = 'userwebsite/registration/old-signup.html'


def login_page_view(request):
    return render(request, 'userwebsite/registration/login.html')


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
            response = requests.post("http://127.0.0.1:8000/api/v1/users/create/", data=request.POST)
            #return HttpResponseRedirect('/success/')
            if response.status_code == 201:
                return HttpResponse('Yay, it worked')
            return HttpResponse('Could not save data')

        return render(request, self.template_name, {'form': form})



#def SignUpView(request):
#    return render(request, 'userwebsite/registration/signup-page-view.html')


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
