# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import ckeditor.fields
import datetime
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('web', '0010_remove_entrada_imagen'),
    ]

    operations = [
        migrations.CreateModel(
            name='Actividad',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=100)),
                ('noticia', ckeditor.fields.RichTextField(verbose_name='Contenido de la actividad')),
                ('resumen', ckeditor.fields.RichTextField(verbose_name='Resumen de la actividad, para la pagina principal')),
                ('fecha', models.DateField(default=datetime.date.today)),
            ],
        ),
        migrations.CreateModel(
            name='Evento',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=100)),
            ],
        ),
        migrations.AddField(
            model_name='actividad',
            name='id_area',
            field=models.ForeignKey(to='web.Evento'),
        ),
        migrations.AddField(
            model_name='actividad',
            name='id_usuario',
            field=models.ForeignKey(to=settings.AUTH_USER_MODEL),
        ),
    ]
