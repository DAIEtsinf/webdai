# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Area',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True, verbose_name='ID', auto_created=True)),
                ('nombre', models.CharField(max_length=50)),
                ('pub_date', models.DateTimeField(verbose_name='date published')),
            ],
        ),
        migrations.CreateModel(
            name='Entrada',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True, verbose_name='ID', auto_created=True)),
                ('titulo', models.CharField(max_length=100)),
                ('noticia', models.CharField(max_length=3000)),
                ('fecha', models.DateField()),
                ('imagen', models.CharField(max_length=500)),
                ('id_area', models.ForeignKey(to='web.Area')),
            ],
        ),
        migrations.CreateModel(
            name='FAQ',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True, verbose_name='ID', auto_created=True)),
                ('pregunta', models.CharField(max_length=300)),
                ('respuesta', models.CharField(max_length=300)),
            ],
        ),
        migrations.CreateModel(
            name='Frases_celebres',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True, verbose_name='ID', auto_created=True)),
                ('frase', models.CharField(max_length=300)),
                ('autor', models.CharField(max_length=300)),
            ],
        ),
    ]
