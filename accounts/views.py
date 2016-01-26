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

@login_required
def perfil_view(request):
    #user = User.objects.all()
    user = User.objects.get(username=request.user)
    if request.method == 'POST':
        form = PerfilForm(request.POST)

        if form.is_valid():
            user.mail = form.cleaned_data['email']
            user.save()

    else:
        # Si el mthod es GET, instanciamos un objeto RegistroUserForm vacio
        form = PerfilForm()
    context = {'form': form}
    return render(request, 'accounts/perfil.html', context)
    #context = {'perfil': perfil}

    #return render(request, 'accounts/perfil.html', context)


@login_required
def modificarUsuario_view(request):
    perfil = request.user.profile
    perfil.email = request.POST['email']
    perfil.save()
    pass

def registro_usuario_view(request):
    user_form = RegistroUserForm(request.POST)
    userProfile_form = PerfilForm(request.POST)
    if request.method == 'POST':

        # Comprobamos si el formulario es valido
        if user_form.is_valid() and userProfile_form.is_valid():

            user = user_form.save()
            profile = userProfile_form.save(commit = False)
            profile.user = user
            profile.save()
            # #cleaned_data = perfil_form.cleaned_data
            # #username = cleaned_data.get('username')
            # #password = cleaned_data.get('password')
            # #email = cleaned_data.get('email')
            # #photo = cleaned_data.get('photo')
            # # E instanciamos un objeto User, con el username y password
            # user_model = User.objects.create_user(username=username, password=password)
            # # Añadimos el email
            # user_model.email = email
            # # Y guardamos el objeto, esto guardara los datos en la db.
            # user_model.save()
            # # Ahora, creamos un objeto UserProfile, aunque no haya incluido
            # # una imagen, ya quedara la referencia creada en la db.
            # user_profile = UserProfile()
            # # Al campo user le asignamos el objeto user_model
            # user_profile.user = user_model
            # # y le asignamos la photo (el campo, permite datos null)
            # user_profile.photo = photo
            # # Por ultimo, guardamos tambien el objeto UserProfile
            # user_profile.save()
            # # Ahora, redireccionamos a la pagina accounts/gracias.html
            # # Pero lo hacemos con un redirect.

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
    # template = loader.get_template('accounts/entradasAdmin.html')
    area_obj = Area.objects.get(nombre=area)
    user = User.objects.get(user=request.user)
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
    context = {'form': form}
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


@login_required
def areasAdmin_view(request):
    areas = Area.objects.all()
    template = loader.get_template('accounts/areasAdmin.html')
    context = RequestContext(request, {
        'areas': areas,
    })
    return HttpResponse(template.render(context))


@login_required
def entradasAdmin_view(request):
    return render(request, 'accounts/entradasAdmin.html')


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
