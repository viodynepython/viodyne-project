from django.shortcuts import render, redirect, HttpResponse
from .models import HomeSlider, HomeSlider2, Homeslide3, ContactUs, JoinUs
from .forms import ContactForm, JoinusForm
# Create your views here.
def index(request):
	slider  = HomeSlider.objects
	slider2 = HomeSlider2.objects
	slider3 = Homeslide3.objects

	return render(request, 'home/index.html',{'sliders':slider,'sliders2':slider2,'sliders3':slider3})

def aboutus(request):
	return  render(request, 'home/about.html')

def contactus(request):
	if request.method == 'POST':
		form = ContactForm(request.POST)
		if form.is_valid():
			form.save()
			return redirect('successview')
		else:
			form = ContactForm()
	return render(request, 'home/contact.html', {'form': ContactForm})

def joinus(request):
	if request.method == 'POST':
		form = ContactForm(request.POST)
		if form.is_valid():
			form.save()
			return redirect('successview')
		else:
			form = ContactForm()
	return render(request, 'home/join.html', {'form':JoinusForm})
	
def successview(request):
	return  render(request, 'home/thanks.html')
