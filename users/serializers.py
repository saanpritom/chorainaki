# users/serializers.py
from rest_framework import serializers
from . import models

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.CustomUser
        fields = ('id', 'full_name', 'username', 'password', 'mobile_number', 'address')
        write_only_fields = ('password',)
        read_only_fields = ('id',)
