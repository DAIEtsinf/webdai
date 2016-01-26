from django.db import models
from django.conf import settings
from django.contrib.auth.models import User

# Create your models here.
class UserProfile(models.Model):

    user = models.OneToOneField(User, unique=True)
    photo = models.ImageField(upload_to='profiles', blank=True, null=True)
    direccion = models.CharField(max_length=250, blank=True)
    telefono = models.PositiveIntegerField(null=True, blank=True)

    def __str__(self):
        return str(self.user)

