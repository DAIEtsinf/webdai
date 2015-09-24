# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0004_auto_20150630_0248'),
    ]

    operations = [
        migrations.AlterField(
            model_name='area',
            name='nombre',
            field=models.CharField(max_length=50, unique=True),
        ),
    ]
