# Generated by Django 4.1.3 on 2023-01-03 10:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0019_alter_orders_order_day'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orders',
            name='Order_day',
            field=models.IntegerField(default=3),
        ),
    ]