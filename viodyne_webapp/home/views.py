from django.shortcuts import render, redirect, HttpResponse
from .models import HomeSlider, HomeSlider2, Homeslide3, ContactUs, JoinUs, BecomeDistributer, HomeS1, HomeS2, Homes3, AboutUs, AboutUsSlider, SpecialtiesSlider, JoinUsSlider, ProductCategory, ProductsList
from .forms import ContactForm, JoinUsForm, AboutForm, DistributerForm

# Create your views here.
aboutUsDd = AboutUsSlider.objects.all()[0:5]
SpecialtiesDd = SpecialtiesSlider.objects.all()[0:5]
joinUsDd = JoinUsSlider.objects.all()[0:2]
ProductsListDd =  ProductsList.objects.all()[0:8]
ProductCategoryDd =ProductCategory.objects.all()[0:8]

def index(request):
	slider  = HomeSlider.objects
	slider2 = HomeSlider2.objects
	slider3 = Homeslide3.objects
	homeslider= HomeS1.objects

	return render(request, 'home/index.html',{'sliders':homeslider,'sliders2':slider2,'sliders3':slider3,  'aboutusdropdown' : aboutUsDd, 'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd, 'product1dropdown' : ProductCategoryDd })

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
		return render(request, 'home/about.html', {'form': AboutForm, 'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def products(request):
	s1 = HomeS1.objects
	s2 = HomeS2.objects
	s3 = Homes3.objects

	return  render(request, 'home/products.html',{'s1s':s1,'s2s':s2,'s3s':s3, 'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def knowledge(request):
		return render(request, 'home/knowledge-library.html', {'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def privacyPolicy(request):
		return render(request, 'home/privacypolicy.html', {'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def termCondition(request):
		return render(request, 'home/termcondition.html', {'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

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
	return render(request, 'home/contactus.html', {'form': ContactForm, 'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})


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
	return render(request, 'home/join-our-team.html', {'form': JoinUsForm, 'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def becomeDistributer(request):
	if request.method == 'POST':
		form = DistributerForm(request.POST)
		print(form.errors)
		name = request.POST.get('NAME', '')
		email = request.POST.get('EMAIL', '')
		company = request.POST.get('COMPANY', '')
		phone = request.POST.get('TELEPHONE', '')
		msg = request.POST.get('MESSAGE', '')
		if form.is_valid():
			p = BecomeDistributer(NAME=name, COMPANY=company, TELEPHONE=phone, EMAIL=email, MESSAGE=msg)
			p.save()
			return redirect('successview')
		else:
			form = DistributerForm()
	return render(request, 'home/become-distributer.html', {'form': DistributerForm, 'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def requestQuote(request):
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
	return render(request, 'home/requestaquote.html', {'form': JoinUsForm, 'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

# def joinOurNetwork(request):
# 	if request.method == 'POST':
# 		form = JoinUsForm(request.POST)
# 		print(form.errors)
# 		name = request.POST.get('NAME', '')
# 		email = request.POST.get('EMAIL', '')
# 		company = request.POST.get('COMPANY', '')
# 		phone = request.POST.get('TELEPHONE', '')
# 		msg = request.POST.get('MESSAGE', '')
# 		if form.is_valid():
# 			p = JoinUs(NAME=name, COMPANY=company, TELEPHONE=phone, EMAIL=email, MESSAGE=msg)
# 			p.save()
# 			return redirect('successview')
# 		else:
# 			form = JoinUsForm()
# 	return render(request, 'home/become-distributer.html', {'form': JoinUsForm, 'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def successview(request):
	return  render(request, 'home/thanks.html', {'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def page_not_found(request, exception):
	return  render(request,'home/pagenotfound.html', {'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def bad_request(request, exception):
	return  render(request,'home/pagenotfound.html', {'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def permission_denied(request, exception):
	return  render(request,'home/pagenotfound.html', {'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

def server_error(request, exception):
	return  render(request,'home/pagenotfound.html', {'aboutusdropdown' : aboutUsDd,  'specialtiesdropdown' : SpecialtiesDd, 'joinusdropdown' : joinUsDd, 'productdropdown' : ProductsListDd,  'product1dropdown' : ProductCategoryDd})

