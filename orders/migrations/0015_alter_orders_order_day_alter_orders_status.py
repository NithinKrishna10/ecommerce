# Generated by Django 4.1.3 on 2022-12-27 09:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0014_remove_orderproducts_order_day_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orders',
            name='Order_day',
            field=models.IntegerField(default=27),
        ),
        migrations.AlterField(
            model_name='orders',
            name='status',
            field=models.CharField(choices=[('Placed', 'Placed'), ('Shipped', 'Shipped'), ('Out For Delivery', 'Out For Delivery'), ('Delivered', 'Delivered'), ('Cancelled', 'Cancelled')], default='Placed', max_length=50),
        ),
    ]