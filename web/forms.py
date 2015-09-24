from django import forms
from django.contrib.auth.models import User
from .models import Area

class AreaForm(forms.Form):

    ## widgets
    nombre = forms.CharField(
        min_length=3,
        widget=forms.TextInput(attrs={'class': 'form-control'}))

    def clean_nombre(self):
        """Comprueba que no exista un nombre igual en la db"""
        nombre = self.cleaned_data['nombre']
        if Area.objects.filter(nombre=nombre):
            raise forms.ValidationError('Area ya registrada.')
        return nombre