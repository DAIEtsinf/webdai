__author__ = 'jose'
# accounts/urls.py

from django.conf.urls import url

from . import views

app_name = 'accounts'
urlpatterns = [
    url(r'^registro/$', views.registro_usuario_view, name='accounts.registro'),
    url(r'gracias/(?P<username>[\w]+)/$',
        views.gracias_view,
        name='accounts.gracias'),
    url(r'^$', views.index_view, name='accounts.index'),
    url(r'^logout/$', views.logout_view, name='accounts.logout'),
    url(r'^login/$', views.login_view, name='accounts.login'),
    url(r'^panel/$', views.panel_view, name='accounts.panel'),
    url(r'^elegirEntrada/$', views.elegirEntrada_view, name='accounts.elegirEntrada'),
    url(r'^entrada/(?P<area>[a-zA-Z0-9]+)/$', views.entrada_view, name='accounts.entrada'),

    url(r'^areasAdmin/$', views.areasAdmin_view, name='accounts.areasAdmin'),
    url(r'^entradasAdmin/$', views.entradasAdmin_view, name='accounts.entradasAdmin'),
    url(r'^createArea/$', views.createArea_view, name='accounts.createArea'),
]