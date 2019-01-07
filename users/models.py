from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomUser(AbstractUser):
    full_name = models.CharField(max_length=256, blank=False)
    mobile_number = models.CharField(max_length=80, blank=False)
    address = models.TextField(max_length=500, blank=True)

    def __str__(self):
        return self.email

    class Meta():
        ordering = ('full_name',)
