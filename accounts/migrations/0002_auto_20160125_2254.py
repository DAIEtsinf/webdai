# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='userprofile',
            name='alias',
        ),
        migrations.RemoveField(
            model_name='userprofile',
            name='apellidos',
        ),
        migrations.RemoveField(
            model_name='userprofile',
            name='mail',
        ),
        migrations.RemoveField(
            model_name='userprofile',
            name='nombre',
        ),
        migrations.AddField(
            model_name='userprofile',
            name='direccion',
            field=models.CharField(max_length=250, blank=True),
        ),
        migrations.AddField(
            model_name='userprofile',
            name='telefono',
            field=models.PositiveIntegerField(null=True, blank=True),
        ),
    ]
