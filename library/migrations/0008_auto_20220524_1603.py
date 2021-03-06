# Generated by Django 3.2 on 2022-05-24 21:03

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('library', '0007_auto_20220524_1545'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rack',
            name='status',
            field=models.BooleanField(default=True),
        ),
        migrations.AlterField(
            model_name='rack',
            name='uuid',
            field=models.UUIDField(default=uuid.UUID('22dafb4e-8541-4d2f-a7ba-ce593d35087a')),
        ),
    ]
