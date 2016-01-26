# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0009_auto_20160126_1902'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='entrada',
            name='imagen',
        ),
    ]
