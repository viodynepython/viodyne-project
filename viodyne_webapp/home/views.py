from django.shortcuts import render, redirect, HttpResponse
from .models import HomeSlider, HomeSlider2, Homeslide3, ContactUs, JoinUs
from .forms import ContactForm, JoinUsForm
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
	return render(request, 'home/form1.html', {'form': ContactForm})


def joinus(request):
	if request.method == 'POST':
		form = JoinUsForm(request.POST)
		print(form.errors)
		first_name = request.POST.get('FIRST_NAME', '')
		email = request.POST.get('EMAIL', '')
		last_name = request.POST.get('LAST_NAME', '')
		phone = request.POST.get('TELEPHONE', '')
		msg = request.POST.get('MESSAGE', '')
		if form.is_valid():
			p = JoinUs(FIRST_NAME=first_name, LAST_NAME=last_name, TELEPHONE=phone, EMAIL=email, MESSAGE=msg)
			p.save()
			return redirect('successview')
		else:
			form = JoinUsForm()
	return render(request, 'home/joinus.html', {'form': JoinUsForm})

def successview(request):
	return  render(request, 'home/thanks.html')
