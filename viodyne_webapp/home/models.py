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


						
	


