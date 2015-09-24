# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import ckeditor.fields
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0003_remove_area_pub_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='entrada',
            name='resumen',
            field=ckeditor.fields.RichTextField(default='Resumen', verbose_name='Resumen de la noticia, para la pagina principal'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='entrada',
            name='noticia',
            field=ckeditor.fields.RichTextField(verbose_name='Contenido de la noticia'),
        ),
        migrations.AlterField(
            model_name='perfil',
            name='user',
            field=models.OneToOneField(to=settings.AUTH_USER_MODEL),
        ),
    ]
