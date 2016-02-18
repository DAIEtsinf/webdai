from django.http import Http404
from django.template import RequestContext, loader
from django.http import HttpResponse
from web.models import Entrada, Area, Evento, Actividad

# Create your views here.
def index(request):
    #lista_ultimas_entradas = Entrada.objects.order_by('-fecha')[:4]
    lista_ultimas_entradas = Entrada.objects.order_by('-fecha')[:10]
    areas = Area.objects.all()
    template = loader.get_template('noticias/index.html')
    context = RequestContext(request, {
        'lista_ultimas_entradas': lista_ultimas_entradas,
        'areas': areas,
    })
    return HttpResponse(template.render(context))

def about(request):
    # TODO
    # sobran datos
    lista_ultimas_entradas = Entrada.objects.order_by('-fecha')[:4]
    areas = Area.objects.all()
    template = loader.get_template('noticias/about.html')
    context = RequestContext(request, {
        'lista_ultimas_entradas': lista_ultimas_entradas,
        'areas': areas,
    })
    return HttpResponse(template.render(context))

def contact_view(request):
    template = loader.get_template('noticias/contacts.html')
    areas = Area.objects.all()
    context = RequestContext(request, {
        'areas': areas,
    })
    return HttpResponse(template.render(context))

def faq_view(request):
    template = loader.get_template('noticias/preguntas_frecuentes.html')
    areas = Area.objects.all()
    context = RequestContext(request, {
        'areas': areas,
    })
    return HttpResponse(template.render(context))

def politica_privacidad(request):
    # TODO
    template = loader.get_template('noticias/politica_privacidad.html')
    context = RequestContext(request, {})
    return HttpResponse(template.render(context))

def entrada(request, entrada_id):
    try:
        entrada = Entrada.objects.get(id=entrada_id)
    except Entrada.DoesNotExist:
        raise Http404("La entrada no existe")
    template = loader.get_template('noticias/noticia.html')
    context = RequestContext(request, {
        'entrada': entrada,
    })
    return HttpResponse(template.render(context))

def area(request, area):
    try:
        areaObject = Area.objects.get(nombre=area)
    except Area.DoesNotExist:
        raise Http404("El area no existe")
    try:
        entradas = Entrada.objects.filter(id_area=areaObject.id).order_by('-fecha')
    except Entrada.DoesNotExist:
        raise Http404("La entrada no existe")

    template = loader.get_template('noticias/area.html')
    context = RequestContext(request, {
        'area': areaObject,
        'entradas': entradas
    })
    return HttpResponse(template.render(context))

def area_cultural(request):
    area = "Cultural"

    eventos = Evento.objects.all()

    template = loader.get_template('noticias/area_cultural.html')
    context = RequestContext(request, {
        'eventos': eventos,
    })
    return HttpResponse(template.render(context))

def actividad(request, actividad_id):
    try:
        actividad = Actividad.objects.get(id=actividad_id)
    except Actividad.DoesNotExist:
        raise Http404("El evento no existe")
    template = loader.get_template('noticias/noticia.html')
    context = RequestContext(request, {
        'entrada': actividad,
    })
    return HttpResponse(template.render(context))