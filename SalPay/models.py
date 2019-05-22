from django.db import models

class Student(models.Model):
	name = models.CharField(max_length=100)
	enrollment = models.CharField(max_length=100)
	course = models.CharField(max_length=20)
	branch = models.CharField(max_length=20)
	fees = models.CharField(max_length=20)
	dob = models.CharField(max_length=20)
	email = models.EmailField(max_length=50)
	phone = models.CharField(max_length=20)

	class Meta:
		db_table = "student"

class UserRegister(models.Model):
	enroll = models.CharField(max_length=20, unique=True)
	email = models.EmailField(max_length=50, unique=True)
	password = models.CharField(max_length=200)

	class Meta:
		db_table = "user"

class Contact(models.Model):
	name = models.CharField(max_length=30)
	email = models.EmailField(max_length=50)
	phone = models.CharField(max_length=20)
	msg = models.TextField(max_length=500)

	class Meta:
		db_table = "contact"			

class Card(models.Model):
	enroll = models.CharField(max_length=30, default="")
	card = models.CharField(max_length=30)
	cvv = models.CharField(max_length=10)
	date = models.CharField(max_length=20)
	paid_date = models.DateField(auto_now_add=True)

	class Meta:
		db_table = "card"		