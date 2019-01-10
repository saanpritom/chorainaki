from django.contrib.auth.models import AbstractUser
from django.db import models
from django.db.models.signals import post_save
from django.dispatch import receiver
from rest_framework.authtoken.models import Token
from django.conf import settings


class CustomUser(AbstractUser):
    full_name = models.CharField(max_length=256, blank=False)
    mobile_number = models.CharField(max_length=80, blank=False)
    address = models.TextField(max_length=500, blank=True)

    def __str__(self):
        return self.email

    class Meta():
        ordering = ('full_name',)


# This code is triggered whenever a new user has been created and saved to the database
@receiver(post_save, sender=settings.AUTH_USER_MODEL)
def create_auth_token(sender, instance=None, created=False, **kwargs):
    if created:
        Token.objects.create(user=instance)
