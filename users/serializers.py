# users/serializers.py
from rest_framework import serializers
from . import models

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.CustomUser
        fields = ('id', 'full_name', 'username', 'password', 'mobile_number', 'address')
        write_only_fields = ('password',)
        read_only_fields = ('id',)


class SignUpFormSerializer(serializers.Serializer):
    full_name = serializers.CharField(label='Your Name', max_length=100, style={'class': 'form-control', 'id': 'InputName', 'placeholder': 'Enter Name'})
    username = serializers.EmailField(label='Your Email', style={'class': 'form-control', 'id': 'InputEmail', 'placeholder': 'Enter Email'})
    mobile_number = serializers.CharField(label='Mobile Number', style={'class': 'form-control', 'id': 'InputNumber', 'placeholder': 'Enter Number'}, max_length=20)
    address = serializers.CharField(style={'class': 'form-control', 'id': 'InputAddress', 'rows': 3, 'base_template': 'textarea.html'}, label='Your Address', max_length=500, required=False)
    password1 = serializers.CharField(style={'class': 'form-control', 'id': 'InputPassword', 'placeholder': 'Your Password', 'input_type': 'password'})
    password2 = serializers.CharField(style={'class': 'form-control', 'id': 'InputConfirmPassword', 'placeholder': 'Confirm Password', 'input_type': 'password'})
