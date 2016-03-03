from allauth.account.adapter import DefaultAccountAdapter
from django.shortcuts import redirect
from django.http import HttpResponse, HttpResponseGone
from dai.settings import ALLOWED_DOMAIN
import re
from django.http import Http404

class OnlyUPVAdapter(DefaultAccountAdapter):

    # TODO redireccionar a soloUPV.html
    # https://docs.djangoproject.com/es/1.9/topics/http/views/

    def clean_email(self, email):
        splt = email.split('@')[1]
        splt = splt.split('.')
        penultimo = len(splt) - 2
        str = splt[penultimo]# cogemos solo la penultima posicion EX: inf.upv.es -> upv
        str = str.lower()

        reg = re.compile(ALLOWED_DOMAIN, re.IGNORECASE)
        if reg.match(str) is None:
            raise Http404("Solo emails de la UPV!")
        return email