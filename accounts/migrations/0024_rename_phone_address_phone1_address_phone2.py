# Generated by Django 4.1.3 on 2023-01-13 09:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0023_alter_account_signup_day'),
    ]

    operations = [
        migrations.RenameField(
            model_name='address',
            old_name='phone',
            new_name='phone1',
        ),
        migrations.AddField(
            model_name='address',
            name='phone2',
            field=models.CharField(default=0, max_length=15),
        ),
    ]
