from django.contrib import admin
from .models import Area, Entrada, Frases_celebres, FAQ, Actividad, Evento

class AreaAdmin(admin.ModelAdmin):
    model = Area
    list_display = ('nombre',)

class EntradasAdmin(admin.ModelAdmin):
    list_display = ('titulo', 'fecha')

class EventosAdmin(admin.ModelAdmin):
    model = Evento
    list_display = ('titulo',)

class ActividadAdmin(admin.ModelAdmin):
    model = Actividad
    list_display = ('titulo','resumen','fecha',)


# Register your models here.
#admin.site.register(Perfil)
admin.site.register(Area, AreaAdmin)
admin.site.register(Entrada, EntradasAdmin)
admin.site.register(FAQ)
admin.site.register(Frases_celebres)
admin.site.register(Actividad, ActividadAdmin)
admin.site.register(Evento, EventosAdmin)