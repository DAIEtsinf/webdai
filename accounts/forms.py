# accounts/forms.py

from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import PasswordChangeForm
from web.models import Entrada, Area
from .models import UserProfile
from ckeditor.widgets import CKEditorWidget
from django.views.generic import FormView
from django.core.urlresolvers import reverse_lazy
from django.contrib import messages

class RegistroUserForm(forms.ModelForm):

    password = forms.CharField(widget=forms.PasswordInput())
    password2 = forms.CharField(label='Confirma (contraseña)', widget=forms.PasswordInput)

    class Meta:

        model = UserProfile

        fields = ('user', 'photo', 'direccion', 'telefono')


    def clean_email(self):
         """Comprueba que no exista un email igual en la db"""
         email = self.cleaned_data['email']
         if User.objects.filter(email=email):
            raise forms.ValidationError('Ya existe un email igual en la db.')
         return email

class PerfilForm(forms.ModelForm):

    class Meta:

        model = UserProfile
         ## widgets
        exclude = ['user']


        photo = forms.ImageField(required=False)

        fields = ('telefono','photo')

        widgets = {
            #'email': email
        }

class UserForm(forms.ModelForm):

    class Meta:

        model = User

        fields = ('email','first_name','last_name','username')

    def clean_email(self):
         """Comprueba que no exista un email igual en la db"""
         email = self.cleaned_data['email']
         if User.objects.filter(email=email):
            pass
            #raise forms.ValidationError('Ya existe un email igual en la db.')
         return email

class AreaForm(forms.Form):

    ## widgets
    nombre = forms.CharField(
        min_length=3,
        widget=forms.TextInput(attrs={'class': 'form-control form-field'}))

    def clean_nombre(self):
        """Comprueba que no exista un nombre igual en la db"""
        nombre = self.cleaned_data['nombre']
        if Area.objects.filter(nombre=nombre):
            raise forms.ValidationError('Area ya registrada.')
        return nombre


class EntradaNuevaForm(forms.ModelForm):

    resumen = forms.CharField(widget=CKEditorWidget('resume'))

    class Meta:
        model = Entrada
         ## widgets

        noticia = forms.CharField(widget=CKEditorWidget())


        resumen = forms.CharField(
            min_length=5,
            widget=forms.TextInput(attrs={'class': 'form-control'}))

        #imagen = forms.ImageField(null=True, blank=True)

        fields = ('titulo', 'noticia','resumen')

        widgets = {
            #'titulo': titulo,
            'noticia': noticia,
            #'imagen': imagen
        }

        def clean_noticia(self):
            """Comprueba que no exista un username igual en la db"""
            titulo = self.cleaned_data['titulo']
            if User.objects.filter(username=titulo):
                raise forms.ValidationError('Esta noticia ya existe.')
            return titulo