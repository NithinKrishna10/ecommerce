# Generated by Django 4.1.3 on 2022-12-21 16:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0007_alter_account_is_active'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='pincode',
            field=models.IntegerField(default=1),
        ),
    ]
