# accounts/forms.py

from django import forms
from django.contrib.auth.models import User
from web.models import Entrada
from ckeditor.widgets import CKEditorWidget

class RegistroUserForm(forms.Form):

    ## widgets
    username = forms.CharField(
        min_length=5,
        widget=forms.TextInput(attrs={'class': 'form-control'}))

    email = forms.EmailField(
        widget=forms.EmailInput(attrs={'class': 'form-control'}))

    password = forms.CharField(
        min_length=5,
        widget=forms.PasswordInput(attrs={'class': 'form-control'}))

    password2 = forms.CharField(
        min_length=5,
        widget=forms.PasswordInput(attrs={'class': 'form-control'}))

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