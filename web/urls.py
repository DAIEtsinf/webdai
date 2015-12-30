__author__ = 'Jose'
from django.conf.urls import include,url

from . import views

urlpatterns = [

    url(r'^about/$', views.about, name='web.about'),
    # ex: /entrada/5/
    url(r'^entrada/(?P<entrada_id>[0-9]+)/$', views.entrada, name='entrada'),
    # ex: /area/Academicas/
    url(r'^area/(?P<area>[a-zA-Z0-9]+)/$', views.area, name='area'),
    url(r'^ckeditor/', include('ckeditor.urls')),
    # ex: /entradas/
    url(r'^entradas/', views.index, name='index'),
    # /accounts,
    url(r'^accounts/', include('accounts.urls')),

    url(r'^areasAdmin/$', views.areasAdmin_view, name='web.areasAdmin'),
    url(r'^entradasAdmin/$', views.entradasAdmin_view, name='web.entradasAdmin'),
    url(r'^createArea/$', views.createArea_view, name='web.createArea'),
    url(r'^politica_privacidad/$', views.politica_privacidad, name='web.politica_privacidad'),
    # TODO hacer que el link de politica_privacidad se vea en todas las webs
    # ex: /
    url(r'^$', views.index, name='index'),
]

