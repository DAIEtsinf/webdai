# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0011_auto_20160218_1845'),
    ]

    operations = [
        migrations.RenameField(
            model_name='actividad',
            old_name='id_area',
            new_name='id_evento',
        ),
    ]
