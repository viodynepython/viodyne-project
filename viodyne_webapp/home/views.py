from django.shortcuts import render, redirect, HttpResponse
from .models import HomeSlider, HomeSlider2, Homeslide3, ContactUs, JoinUs, HomeS1, HomeS2, Homes3, AboutUs, AboutUsSlider, SpecialtiesSlider, JoinUsSlider, ProductSlider, ProductSlider1
from .forms import ContactForm, JoinUsForm, AboutForm
# Create your views here.
dropdown = AboutUsSlider.objects.all()[0:5]
dropdown1 = SpecialtiesSlider.objects.all()[0:5]
dropdown2 = JoinUsSlider.objects.all()[0:2]
dropdown3 = ProductSlider.objects.all()[0:8]
dropdown4 = ProductSlider1.objects.all()[0:8]

def index(request):
	slider  = HomeSlider.objects
	slider2 = HomeSlider2.objects
	slider3 = Homeslide3.objects

	return render(request, 'home/index.html',{'sliders':slider,'sliders2':slider2,'sliders3':slider3,  'aboutusdropdown' : dropdown, 'specialtiesdropdown' : dropdown1, 'joinusdropdown' : dropdown2, 'productdropdown' : dropdown3, 'product1dropdown' : dropdown4 })

def aboutus(request):
	
		if request.method == 'POST':
			form = AboutForm(request.POST)
			print(form.errors)
			name = request.POST.get('Name', '')
			email = request.POST.get('Email', '')
			comment = request.POST.get('Comment', '')
			if form.is_valid():
				p = AboutUs(Name=name, Email=email, Comment=comment)
				p.save()
				return redirect('successview')
			else:
				form = AboutForm()
		return render(request, 'home/about.html', {'form': AboutForm, 'aboutusdropdown' : dropdown,  'specialtiesdropdown' : dropdown1, 'joinusdropdown' : dropdown2, 'productdropdown' : dropdown3,  'product1dropdown' : dropdown4})

def products(request):
	s1 = HomeS1.objects
	s2 = HomeS2.objects
	s3 = Homes3.objects

	return  render(request, 'home/products.html',{'s1s':s1,'s2s':s2,'s3s':s3, 'aboutusdropdown' : dropdown,  'specialtiesdropdown' : dropdown1, 'joinusdropdown' : dropdown2, 'productdropdown' : dropdown3,  'product1dropdown' : dropdown4})

def knowledge(request):
		return render(request, 'home/knowledge-library.html', {'aboutusdropdown' : dropdown,  'specialtiesdropdown' : dropdown1, 'joinusdropdown' : dropdown2, 'productdropdown' : dropdown3,  'product1dropdown' : dropdown4})


def contactus(request):
	if request.method == 'POST':
		form = ContactForm(request.POST)
		print(form.errors)
		name = request.POST.get('NAME', '')
		email = request.POST.get('EMAIL', '')
		company = request.POST.get('COMPANY', '')
		phone = request.POST.get('TELEPHONE', '')
		msg = request.POST.get('MESSAGE', '')
		if form.is_valid():
			p = ContactUs(NAME=name, COMPANY=company, TELEPHONE=phone, EMAIL=email, MESSAGE=msg)
			p.save()
			return redirect('successview')
		else:
			form = ContactForm()
	return render(request, 'home/contactus.html', {'form': ContactForm, 'aboutusdropdown' : dropdown,  'specialtiesdropdown' : dropdown1, 'joinusdropdown' : dropdown2, 'productdropdown' : dropdown3,  'product1dropdown' : dropdown4})


def joinus(request):
	if request.method == 'POST':
		form = JoinUsForm(request.POST)
		print(form.errors)
		name = request.POST.get('NAME', '')
		email = request.POST.get('EMAIL', '')
		company = request.POST.get('COMPANY', '')
		phone = request.POST.get('TELEPHONE', '')
		msg = request.POST.get('MESSAGE', '')
		if form.is_valid():
			p = JoinUs(NAME=name, COMPANY=company, TELEPHONE=phone, EMAIL=email, MESSAGE=msg)
			p.save()
			return redirect('successview')
		else:
			form = JoinUsForm()
	return render(request, 'home/join-our-team.html', {'form': JoinUsForm, 'aboutusdropdown' : dropdown,  'specialtiesdropdown' : dropdown1, 'joinusdropdown' : dropdown2, 'productdropdown' : dropdown3,  'product1dropdown' : dropdown4})

def successview(request):
	return  render(request, 'home/thanks.html', {'aboutusdropdown' : dropdown,  'specialtiesdropdown' : dropdown1, 'joinusdropdown' : dropdown2, 'productdropdown' : dropdown3,  'product1dropdown' : dropdown4})
