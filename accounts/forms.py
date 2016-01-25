# accounts/forms.py

from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import PasswordChangeForm
from web.models import Entrada, Area
from ckeditor.widgets import CKEditorWidget
from django.views.generic import FormView
from django.core.urlresolvers import reverse_lazy
from django.contrib import messages

class RegistroUserForm(forms.Form):

    ## widgets
    username = forms.CharField(
        min_length=5,
        widget=forms.TextInput(attrs={'class': 'form-control form-field'}))

    email = forms.EmailField(
        widget=forms.EmailInput(attrs={'class': 'form-control form-field'}))

    password = forms.CharField(
        min_length=5,
        widget=forms.PasswordInput(attrs={'class': 'form-control form-field'}))

    password2 = forms.CharField(
        min_length=5,
        widget=forms.PasswordInput(attrs={'class': 'form-control form-field'}))

    photo = forms.ImageField(required=False)

    def clean_username(self):
        """Comprueba que no exista un username igual en la db"""
        username = self.cleaned_data['username']
        if User.objects.filter(username=username):
            raise forms.ValidationError('Nombre de usuario ya registrado.')
        return username

    def clean_email(self):
        """Comprueba que no exista un email igual en la db"""
        email = self.cleaned_data['email']
        if User.objects.filter(email=email):
            raise forms.ValidationError('Ya existe un email igual en la db.')
        return email

    def clean_password2(self):
        """Comprueba que password y password2 sean iguales."""
        password = self.cleaned_data['password']
        password2 = self.cleaned_data['password2']
        if password != password2:
            raise forms.ValidationError('Las contraseñas no coinciden.')
        return password2


class PerfilForm(forms.ModelForm):

    class Meta:

        model = User
         ## widgets

        email = forms.EmailField(
            widget=forms.EmailInput(attrs={'class': 'form-control form-field'}))

        photo = forms.ImageField(required=False)

        fields = ('email',)

        widgets = {
            #'email': email
        }


        def clean_email(self):
            """Comprueba que no exista un email igual en la db"""
            email = self.cleaned_data['email']
            if User.objects.filter(email=email):
                raise forms.ValidationError('Ya existe un email igual en la db.')
            return email

        def save(self, *args, **kwargs):
            """
            Update the primary email address on the related User object as well.
            """
            u = self.instance.user
            u.email = self.cleaned_data['email']
            u.save()
            profile = super(PerfilForm, self).save(*args,**kwargs)
            return profile


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

    class Meta:
        model = Entrada
         ## widgets

        noticia = forms.CharField(widget=CKEditorWidget())


        resumen = forms.CharField(
            min_length=5,
            widget=forms.TextInput(attrs={'class': 'form-control'}))

        imagen = forms.ImageField(required=False)

        fields = ('titulo', 'noticia','resumen','imagen')

        widgets = {
            #'titulo': titulo,
            'noticia': noticia
        }

        def clean_noticia(self):
            """Comprueba que no exista un username igual en la db"""
            titulo = self.cleaned_data['titulo']
            if User.objects.filter(username=titulo):
                raise forms.ValidationError('Esta noticia ya existe.')
            return titulo