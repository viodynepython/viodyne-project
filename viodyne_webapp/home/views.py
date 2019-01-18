from django.shortcuts import render
from .models import HomeSlider, HomeSlider2, Homeslide3
# Create your views here.
def index(request):
	slider  = HomeSlider.objects
	slider2 = HomeSlider2.objects
	slider3 = Homeslide3.objects

	return render(request, 'home/index.html',{'sliders':slider,'sliders2':slider2,'sliders3':slider3})

def aboutus(request):
	return render(request, 'home/about.html')
