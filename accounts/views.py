from django.contrib.auth.models import User
from .forms import *
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.shortcuts import render
from django.template import RequestContext, loader
from django.http import HttpResponse
from web.models import Entrada, Area, Perfil
from django.contrib.auth.decorators import login_required
from django.shortcuts import redirect
from django.core.urlresolvers import reverse
from django.http import HttpResponseRedirect



def registro_usuario_view(request):
    if request.method == 'POST':
        # Si el method es post, obtenemos los datos del formulario
        form = RegistroUserForm(request.POST, request.FILES)

        # Comprobamos si el formulario es valido
        if form.is_valid():
            entrada = form.save(commit=False)
            entrada.author = request.user
            entrada.save()
            return redirect(reverse('accounts.gracias', kwargs={'username': request.user}))
    else:
        # Si el mthod es GET, instanciamos un objeto RegistroUserForm vacio
        form = RegistroUserForm()
    # Creamos el contexto
    context = {'form': form}
    # Y mostramos los datos
    return render(request, 'accounts/registro.html', context)

@login_required
def gracias_view(request, username):
    return render(request, 'accounts/gracias.html', {'username': username})

@login_required
def index_view(request):
    return render(request, 'accounts/index.html')

@login_required
def panel_view(request):
    return render(request, 'accounts/panel.html')

@login_required
def elegirEntrada_view(request):
    areas = Area.objects.all()
    template = loader.get_template('accounts/elegirArea.html')
    context = RequestContext(request, {
        'areas': areas,
    })
    return HttpResponse(template.render(context))

## TODO imagenes, redireccion
@login_required
def entrada_view(request, area):
    #template = loader.get_template('accounts/entradasAdmin.html')
    area_obj = Area.objects.get(nombre=area)
    perfil = Perfil.objects.get(user=request.user)
    if request.method == 'POST':
        # Si el method es post, obtenemos los datos del formulario
        form = EntradaNuevaForm(request.POST, request.user)

        # Comprobamos si el formulario es valido
        if form.is_valid():
            post = form.save(commit=False)
            post.id_area_id = area_obj.id
            post.id_usuario = perfil
            post.imagen = "a"
            post.save()

            #url = reverse('web.entradas')

            return redirect('/entradas/')
    else:
        # Si el mthod es GET, instanciamos un objeto RegistroUserForm vacio
        form = EntradaNuevaForm()
    # Creamos el contexto
    context = {'form': form}
    # Y mostramos los datos
    return render(request, 'accounts/entradasAdmin.html', context)
    #return HttpResponse(template.render(context))


def login_view(request):
    # Si el usuario esta ya logueado, lo redireccionamos a index_view
    if request.user.is_authenticated():
        return redirect(reverse('accounts.index'))

    mensaje = ''
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                return redirect(reverse('accounts.index'))
            else:
                # Redireccionar informando que la cuenta esta inactiva
                # TODO
                pass
        mensaje = 'Nombre de usuario o contraseña no valido'
    return render(request, 'accounts/login.html', {'mensaje': mensaje})

def logout_view(request):
    logout(request)
    messages.success(request, 'Te has desconectado con exito.')
    return redirect(reverse('accounts.login'))

