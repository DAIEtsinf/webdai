from django.db import models
from django.contrib.auth.models import User
from ckeditor.fields import RichTextField
import datetime

# region Users
#User.add_to_class('direccion', models.FloatField(null=True,blank=True))
#User.add_to_class('telefono', models.PositiveIntegerField(null=True,blank=True))
#User.add_to_class('amigos', models.ManyToManyField('self', symmetrical=True,  blank=True))
def user_str(self):
    return self.username

User.add_to_class('__str__',user_str)
# endregion

class Area(models.Model):
    nombre = models.CharField(max_length=50, unique= True)

    def __str__(self):
        return self.nombre

class Entrada(models.Model):
    titulo = models.CharField(max_length=100)
    noticia = RichTextField('Contenido de la noticia')
    resumen = RichTextField('Resumen de la noticia, para la pagina principal')
    id_area = models.ForeignKey(Area)
    id_usuario = models.ForeignKey(User)
    fecha = models.DateField(default=datetime.date.today)
    #imagen = models.ImageField(upload_to='/some/path',blank=True, null=True)

    def __str__(self):
        return self.titulo

class Frases_celebres(models.Model):
    frase = models.CharField(max_length=300)
    autor = models.CharField(max_length=300)

class FAQ(models.Model):
    pregunta= models.CharField(max_length=300)
    respuesta = models.CharField(max_length=300)

# Semana cultural

class Evento(models.Model):
    titulo = models.CharField(max_length=100)

    def __str__(self):
        return self.titulo

class Actividad(models.Model):
    titulo = models.CharField(max_length=100)
    noticia = RichTextField('Contenido de la actividad')
    resumen = RichTextField('Resumen de la actividad, para la pagina principal')
    id_area = models.ForeignKey(Evento)
    id_usuario = models.ForeignKey(User)
    fecha = models.DateField(default=datetime.date.today)

    def __str__(self):
        return self.titulo
