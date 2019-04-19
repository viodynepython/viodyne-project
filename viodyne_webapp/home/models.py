from django.db import models

# Create your models here.

class HomeSlider(models.Model):
	Name = models.CharField(max_length=120)
	Image =models.ImageField(upload_to='slider/')
	class Meta:
		ordering = ('Name',)

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
	class Meta:
		ordering = ('Name',)
	def __str__(self):
		return self.Name

class ContactUs(models.Model):
	NAME      = models.CharField(max_length=120)
	COMPANY   = models.CharField(max_length=120)
	TELEPHONE = models.CharField(max_length=120)
	EMAIL	  = models.EmailField(max_length=120)
	MESSAGE   = models.CharField(max_length=300)
	class Meta:
		ordering = ('NAME',)

	def __str__(self):
		return self.NAME

class JoinUs(models.Model):
	NAME       = models.CharField(max_length=120)
	COMPANY    = models.CharField(max_length=120)
	TELEPHONE  = models.CharField(max_length=120)
	EMAIL	   = models.EmailField(max_length=120)
	MESSAGE    = models.CharField(max_length=300)
	IMAGE 	   = models.ImageField(upload_to='joinus', blank=True)
	class Meta:
		ordering = ('NAME',)

	def __str__(self):
		return self.NAME

class HomeS1(models.Model):
	Name = models.CharField(max_length=120)
	Image =models.ImageField(upload_to='s1/')
	class Meta:
		ordering = ('Name',)

	def __str__(self):
		return self.Name

class HomeS2(models.Model):
	Name  = models.CharField(max_length=120)
	Name2 = models.CharField(max_length=120)
	Text  = models.CharField(max_length=300)
	Image = models.ImageField(upload_to='s2/')

	def __str__(self):
		return self.Name

class Homes3(models.Model):
	Name  = models.CharField(max_length=120)
	Image = models.ImageField(upload_to='s3/')
	class Meta:
		ordering = ('Name',)
	def __str__(self):
		return self.Name

class AboutUs(models.Model):
	Name      = models.CharField(max_length=120)
	Email	  = models.EmailField(max_length=120)
	Comment   = models.CharField(max_length=300)
	class Meta:
		ordering = ('Name',)

	def __str__(self):
		return self.Name