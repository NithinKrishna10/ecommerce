# Generated by Django 4.1.3 on 2022-12-24 06:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0010_remove_orders_payment_remove_payment_payment_id_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orders',
            name='payment_mode',
            field=models.CharField(default='Pending', max_length=150),
        ),
    ]
