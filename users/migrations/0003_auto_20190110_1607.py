# Generated by Django 2.1.2 on 2019-01-10 10:07

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_customusertoken'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='customusertoken',
            name='token_ptr',
        ),
        migrations.DeleteModel(
            name='CustomUserToken',
        ),
    ]
