# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0005_auto_20150711_1323'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entrada',
            name='fecha',
            field=models.DateField(default=datetime.date.today),
        ),
    ]
