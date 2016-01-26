# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0007_auto_20160123_2239'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='perfil',
            name='user',
        ),
        migrations.AlterField(
            model_name='entrada',
            name='id_usuario',
            field=models.ForeignKey(to=settings.AUTH_USER_MODEL),
        ),
        migrations.DeleteModel(
            name='Perfil',
        ),
    ]
