from django.db import models
from django.conf import settings

# Create your models here.
class UserProfile(models.Model):

    user = models.OneToOneField(settings.AUTH_USER_MODEL)
    photo = models.ImageField(upload_to='profiles', blank=True, null=True)
    nombre = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=100)
    mail = models.CharField(max_length=75)
    alias = models.CharField(max_length=50)

    def __str__(self):
        return str(self.nombre + " " + self.apellidos)[0:5]

