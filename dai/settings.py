"""
Django settings for dai project.

Generated by 'django-admin startproject' using Django 1.8.1.

For more information on this file, see
https://docs.djangoproject.com/en/1.8/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.8/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.8/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '7okyirpu%d2p^kcj$dr10ik+fa=s4d0tc(b1tm*t$%q+btq*cx'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = (
    'web',
    'accounts',
    'ckeditor',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.sites',
    'allauth',
    'allauth.account',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

)

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'django.middleware.security.SecurityMiddleware',
)

ROOT_URLCONF = 'dai.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR,'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'django.template.context_processors.media',
            ],
        },
    },
]

WSGI_APPLICATION = 'dai.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.8/ref/settings/#databases

DATABASES = {
    'default': {
        'NAME': 'dai',
        #'ENGINE': 'django.db.backends.mysql',
		'ENGINE': 'mysql.connector.django',
        'USER': 'root',
        'PASSWORD': 'root',
        'HOST': 'localhost',   # Or an IP Address that your DB is hosted on
        'PORT': '3306',
        'OPTIONS': {
          'autocommit': True,
        },
    }
}


# Internationalization
# https://docs.djangoproject.com/en/1.8/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.8/howto/static-files/

STATIC_URL = '/static/'

AUTH_PROFILE_MODULE = 'accounts.UserProfile'

# Add the 'allauth' backend to AUTHENTICATION_BACKEND and do not remove ModelBackend
AUTHENTICATION_BACKENDS = (
    # Needed to login by username in Django admin and to ensure compatibility with other packages
    'django.contrib.auth.backends.ModelBackend',
    # 'allauth' specific authentication methods
    'allauth.account.auth_backends.AuthenticationBackend',
)

SITE_ID = 1

EMAIL_BACKEND='django.core.mail.backends.console.EmailBackend'

# Custom allauth settings
# Use email as the primary identifier
ACCOUNT_AUTHENTICATION_METHOD = 'email'
ACCOUNT_EMAIL_REQUIRED = True
# Make email verification mandatory to avoid junk email accounts
ACCOUNT_EMAIL_VERIFICATION = 'mandatory'
# Eliminate need to provide username, as it's a very old practice
ACCOUNT_USERNAME_REQUIRED = False

ACCOUNT_SIGNUP_FORM_CLASS = "accounts.forms.RegistroUserForm"

LOGIN_REDIRECT_URL = "/"

CKEDITOR_IMAGE_BACKEND  = 'pillow'
CKEDITOR_UPLOAD_PATH = 'web/uploads/' # subida de archivos (MEDIA_ROOT + CKEDTIRO_UPLOAD_PATH)
CKEDITOR_JQUERY_URL = '//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js'

#MEDIA_ROOT = is the path on the filesystem to the directory containing your static media.
#MEDIA_URL = is the URL that makes the static media accessible over HTTP.

#MEDIA_ROOT = 'media'
#MEDIA_URL = '/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
MEDIA_URL = '/media/'



STATIC_ROOT = MEDIA_ROOT + '/static'



CKEDITOR_CONFIGS = {
    'default': {
        'toolbar': None,
    },
    'resume': {
        "removePlugins": "stylesheetparser",
        'height': 200,
        'width': 500,
    }
}


