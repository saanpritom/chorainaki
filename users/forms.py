from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from .models import CustomUser

class CustomUserCreationForm(UserCreationForm):
    full_name = forms.CharField(label='Your Name', widget=forms.TextInput(attrs={'class': 'form-control', 'id': 'InputName', 'placeholder': 'Enter Name'}), max_length=100)
    username = forms.EmailField(label='Your Email', widget=forms.EmailInput(attrs={'class': 'form-control', 'id': 'InputEmail', 'placeholder': 'Enter Email'}))
    mobile_number = forms.CharField(label='Mobile Number', widget=forms.TextInput(attrs={'class': 'form-control', 'id': 'InputNumber', 'placeholder': 'Enter Number'}), max_length=20)
    address = forms.CharField(widget=forms.Textarea(attrs={'class': 'form-control', 'id': 'InputAddress', 'rows': 3}), label='Your Address', max_length=500, required=False)
    password1 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control', 'id': 'InputPassword', 'placeholder': 'Your Password'}))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control', 'id': 'InputConfirmPassword', 'placeholder': 'Confirm Password'}))

    class Meta(UserCreationForm):
        model = CustomUser
        fields = ('full_name', 'username', 'mobile_number', 'address', 'password1', 'password2')


class CustomUserChangeForm(UserChangeForm):

    class Meta:
        model = CustomUser
        fields = ('username', 'email')
