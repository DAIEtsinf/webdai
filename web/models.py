from django.db import models
from django.contrib.auth.models import User
from ckeditor.fields import RichTextField
import datetime

class Perfil(models.Model):
    user = models.OneToOneField(User)
    nombre = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=100)
    mail = models.CharField(max_length=75)
    alias = models.CharField(max_length=50)

    def __str__(self):
        return str(self.nombre + " " + self.apellidos)[0:5]

class Area(models.Model):
    nombre = models.CharField(max_length=50, unique= True)

    def __str__(self):
        return self.nombre

class Entrada(models.Model):
    titulo = models.CharField(max_length=100)
    noticia = RichTextField('Contenido de la noticia')
    resumen = RichTextField('Resumen de la noticia, para la pagina principal')
    id_area = models.ForeignKey(Area)
    id_usuario = models.ForeignKey(Perfil)
    fecha = models.DateField(default=datetime.date.today)
    imagen = models.CharField(max_length=500, blank=True)

    def __str__(self):
        return self.titulo

class Frases_celebres(models.Model):
    frase = models.CharField(max_length=300)
    autor = models.CharField(max_length=300)

class FAQ(models.Model):
    pregunta= models.CharField(max_length=300)
    respuesta = models.CharField(max_length=300)
