from django.db import models

# Create your models here.

class HomeSlider(models.Model):
	Name = models.CharField(max_length=120)
	Image =models.ImageField(upload_to='slider/')

	def __str__(self):
		return self.Name

class HomeSlider2(models.Model):
	Name  = models.CharField(max_length=120)
	Name2 = models.CharField(max_length=120)
	Text  = models.CharField(max_length=300)
	Image = models.ImageField(upload_to='slider2/')

	def __str__(self):
		return self.Name

class Homeslide3(models.Model):
	Name  = models.CharField(max_length=120)
	Image = models.ImageField(upload_to='slider3/')

	def __str__(self):
		return self.Name

class ContactUs(models.Model):
	NAME      = models.CharField(max_length=120)
	COMPANY   = models.CharField(max_length=120)
	TELEPHONE = models.CharField(max_length=120)
	EMAIL	  = models.EmailField(max_length=120)
	MESSAGE   = models.CharField(max_length=300)

	def __str__(self):
		return self.NAME

class JoinUs(models.Model):
	FIRST_NAME = models.CharField(max_length=120)
	LAST_NAME  = models.CharField(max_length=120)
	TELEPHONE  = models.CharField(max_length=120)
	EMAIL	   = models.EmailField(max_length=120)
	MESSAGE    = models.CharField(max_length=300)

	def __str__(self):
		return self.FIRST_NAME
