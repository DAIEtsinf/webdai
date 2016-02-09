from .forms import *
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render
from django.template import RequestContext, loader
from django.http import HttpResponse, HttpResponseRedirect
from web.models import Area
from django.contrib.auth.decorators import login_required
from django.shortcuts import redirect
from django.core.urlresolvers import reverse
from .models import UserProfile
from django.contrib.admin.views.decorators import staff_member_required
from django.http import Http404

@login_required
def perfil_view(request):
    user_form = UserForm(request.POST,instance=request.user)
    if request.method == 'POST':


        if user_form.is_valid():
            print(request.user)
            user = request.user
            user.email = user_form.cleaned_data['email']
            user.save()
            context = {
            }
            return render(request, 'accounts/index.html', context)
    else: #get
        user_form = UserForm(instance=request.user)
    context = {'user_form': user_form}
    return render(request, 'accounts/perfil.html', context)

def registro_usuario_view(request):
    user_form = RegistroUserForm(request.POST)
    userProfile_form = PerfilForm(request.POST, request.FILES)
    if request.method == 'POST':

        # Comprobamos si el formulario es valido
        if user_form.is_valid() and userProfile_form.is_valid():

            user = user_form.save()
            profile = userProfile_form.save(commit = False)
            profile.user = user
            profile.save()

            return redirect(reverse('accounts.gracias', kwargs={'username': user}))

    # Creamos el contexto
    context = {'user_form': user_form,
               'userProfile_form': userProfile_form
               }
    # Y mostramos los datos
    return render(request, 'accounts/registro.html', context)


@login_required
def gracias_view(request, username):
    return render(request, 'accounts/gracias.html', {'username': username})


@login_required
def index_view(request):
    template = loader.get_template('accounts/index.html')
    context = RequestContext(request, {
    })
    return HttpResponse(template.render(context))

@login_required
def panel_view(request):
    return render(request, 'accounts/panel.html')

@staff_member_required
@login_required
def elegirEntrada_view(request):
    areas = Area.objects.all()
    template = loader.get_template('accounts/elegirArea.html')
    context = RequestContext(request, {
        'areas': areas,
    })
    return HttpResponse(template.render(context))\

@staff_member_required
@login_required
def modificarEntrada_view(request):
    areas = Area.objects.all()
    template = loader.get_template('accounts/elegirAreaEntrada.html')
    context = RequestContext(request, {
        'areas': areas,
    })
    return HttpResponse(template.render(context))


## TODO imagenes, redireccion
@login_required
def entrada_view(request, area):
    # template = loader.get_template('accounts/entradasAdmin.html')
    area_obj = Area.objects.get(nombre=area)
    user = User.objects.get(username=request.user)
    tittle = "Creando entrada"
    action = "Crear"
    if request.method == 'POST':
        # Si el method es post, obtenemos los datos del formulario
        form = EntradaNuevaForm(request.POST, request.user)

        # Comprobamos si el formulario es valido
        if form.is_valid():
            post = form.save(commit=False)
            post.id_area_id = area_obj.id
            post.id_usuario = user
            post.imagen = "a"
            post.save()

            # url = reverse('web.entradas')

            return redirect('/entradas/')
    else:
        # Si el mthod es GET, instanciamos un objeto RegistroUserForm vacio
        form = EntradaNuevaForm()
    # Creamos el contexto
    context = {'form': form,
               'tittle': tittle,
               'action': action}
    # Y mostramos los datos
    return render(request, 'accounts/entradasAdmin.html', context)
    # return HttpResponse(template.render(context))


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
    # messages.success(request, 'Te has desconectado con exito.')
    return redirect(reverse('accounts.login'))

@staff_member_required
@login_required
def areasAdmin_view(request):
    areas = Area.objects.all()
    template = loader.get_template('accounts/areasAdmin.html')
    context = RequestContext(request, {
        'areas': areas,
    })
    return HttpResponse(template.render(context))

@staff_member_required
@login_required
def entradasAdmin_view(request):
    return render(request, 'accounts/entradasAdmin.html')

@staff_member_required
@login_required
def createArea_view(request):
    if request.method == 'POST':
        # Si el method es post, obtenemos los datos del formulario
        form = AreaForm(request.POST)

        # Comprobamos si el formulario es valido
        if form.is_valid():
            cleaned_data = form.cleaned_data
            nombre_data = cleaned_data.get('nombre')
            area_model = Area()
            area_model.nombre = nombre_data
            area_model.save()
            # Ahora, redireccionamos a la pagina accounts/gracias.html
            # Pero lo hacemos con un redirect.
            return redirect(reverse('accounts.areasAdmin'))
    else:
        # Si el mthod es GET, instanciamos un objeto RegistroUserForm vacio
        form = AreaForm()
    # Creamos el contexto
    context = {'form': form}
    # Y mostramos los datos
    return render(request, 'accounts/createArea.html', context)

@staff_member_required
@login_required
def entradasArea_view(request, area):
    try:
        areaObject = Area.objects.get(nombre=area)
    except Area.DoesNotExist:
        raise Http404("El area no existe")
    try:
        entradas = Entrada.objects.filter(id_area=areaObject.id).order_by('-fecha')
    except Entrada.DoesNotExist:
        raise Http404("La entrada no existe")

    template = loader.get_template('accounts/elegirEntradaArea.html')
    context = RequestContext(request, {
        'area': areaObject,
        'entradas': entradas
    })
    return HttpResponse(template.render(context))

@staff_member_required
@login_required
def updateEntrada_view(request, entrada_id):
    action2 = request.POST.get('action')
    entrada = Entrada.objects.get(id=entrada_id)
    if request.method == 'POST':
        form = EntradaNuevaForm(request.POST or None, instance = entrada)
        if 'delete' in request.POST:
            entrada.delete()
            return redirect(reverse('accounts.index'))
        elif form.is_valid():
            form.save()

            return redirect(reverse('accounts.index'))

    action = "Modificar"
    tittle = "Modificando entrada"
    delete = True
    form = EntradaNuevaForm(instance=entrada)
    template = loader.get_template('accounts/entradasAdmin.html')
    context = RequestContext(request, {
        'tittle': tittle,
        'action': action,
        'form': form,
        'delete': delete,
    })
    return HttpResponse(template.render(context))