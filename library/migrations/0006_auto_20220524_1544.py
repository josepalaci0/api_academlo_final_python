# Generated by Django 3.2 on 2022-05-24 20:44

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('library', '0005_auto_20220524_1537'),
    ]

    operations = [
        migrations.RenameField(
            model_name='rackitem',
            old_name='Books',
            new_name='BooK',
        ),
        migrations.AlterField(
            model_name='rack',
            name='uuid',
            field=models.UUIDField(default=uuid.UUID('3de2b573-6b43-4b88-8d89-47557d405fdf')),
        ),
    ]
