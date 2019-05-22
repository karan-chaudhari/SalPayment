# Generated by Django 2.1.5 on 2019-05-06 16:40

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('enrollment', models.CharField(max_length=100)),
                ('course', models.CharField(max_length=20)),
                ('branch', models.CharField(max_length=20)),
                ('fees', models.CharField(max_length=20)),
                ('dob', models.CharField(max_length=20)),
                ('email', models.EmailField(max_length=50)),
                ('phone', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'student',
            },
        ),
    ]
