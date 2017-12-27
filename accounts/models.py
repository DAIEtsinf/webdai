from django.db import models
from django.conf import settings
from django.contrib.auth.models import User

# Create your models here.
class UserProfile(models.Model):

    def generate_filename(self, filename):
        url = "profiles/%s/%s" % (self.user.username, filename)
        return url

    user = models.OneToOneField(User, unique=True)
    photo = models.ImageField(upload_to= generate_filename, blank=True, null=True)
    direccion = models.CharField(max_length=250, blank=True)
    telefono = models.PositiveIntegerField(null=True, blank=True)

    def __str__(self):
        return str(self.user)



    def save(self, *args, **kwargs):
        try:
            this = UserProfile.objects.get(id=self.id)
            if this.photo != self.photo:
                this.photo.delete() # para que no se llame a si mismo
        except: pass
        super(UserProfile, self).save(*args, **kwargs)