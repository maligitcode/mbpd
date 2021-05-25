# Generated by Django 3.2.2 on 2021-05-11 04:46

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('categoryname', models.CharField(max_length=20)),
                ('categorydesc', models.TextField()),
            ],
            options={
                'db_table': 'category',
            },
        ),
    ]