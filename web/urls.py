__author__ = 'Jose'
from django.conf.urls import include,url

from . import views

app_name = 'web'
urlpatterns = [

    url(r'^about/$', views.about, name='web.about'),
    # ex: /entrada/5/
    url(r'^entrada/(?P<entrada_id>[0-9]+)/$', views.entrada, name='entrada'),
    url(r'^actividad/(?P<actividad_id>[0-9]+)/$', views.actividad, name='actividad'),
    # ex: /area/Academicas/
    url(r'^area/Cultural/$', views.area_cultural, name='area'),
    url(r'^area/(?P<area>[a-zA-Z0-9]+)/$', views.area, name='area'),
    url(r'^ckeditor/', include('ckeditor.urls')),
    # ex: /entradas/
    url(r'^entradas/', views.index, name='index'),
    # /accounts,
    url(r'^accounts/', include('accounts.urls')),



    url(r'^contact/$', views.contact_view, name='web.contact'),
    url(r'^preguntas_frecuentes/$', views.faq_view, name='web.faq'),
    url(r'^politica_privacidad/$', views.politica_privacidad, name='web.politica_privacidad'),
    url(r'^$', views.index, name='index'),
]

