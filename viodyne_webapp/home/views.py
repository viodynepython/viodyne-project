from django.shortcuts import render, redirect, HttpResponse, get_object_or_404
from .models import RequestQuote, HomeSlider, HomeSlider2, Homeslide3, ContactUs, JoinUs, BecomeDistributer, HomeS1, HomeS2, Homes3, AboutUs, AboutUsSlider, SpecialtiesSlider, JoinUsSlider, ProductCategory, ProductsList, ProductSubCategory, ProductImages
from .forms import ContactForm, JoinUsForm, AboutForm, DistributerForm
from rest_framework.views import APIView
from rest_framework.response import Response
from .serializer import ProductsListSerializer, AddProductsListSerializer
from django.contrib import messages


from cart.cart import Cart 


# Create your views here.
aboutUsDd = AboutUsSlider.objects.all()[0:5]
SpecialtiesDd = SpecialtiesSlider.objects.all()[0:5]
joinUsDd = JoinUsSlider.objects.all()[0:2]
ProductsListDd = ProductsList.objects.all()[0:8]
ProductCategoryDd = ProductCategory.objects.all()[0:8]
 


class product(APIView):

    def get(self, request, id):
        products = ProductsList.objects.filter(Category=id)
        serializer = ProductsListSerializer(products, many=True)
        return Response(serializer.data)


def index(request):
    slider = HomeSlider.objects
    slider2 = HomeSlider2.objects
    slider3 = ProductCategory.objects
    homeslider = HomeS1.objects


    return render(request, 'home/index.html', {'sliders': homeslider, 'sliders2': slider2, 'sliders3': slider3,  'aboutusdropdown': aboutUsDd, 'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd, 'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


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
    return render(request, 'home/about.html', {'form': AboutForm, 'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def products(request):
    s1 = HomeS1.objects
    s2 = HomeS2.objects
    s3 = Homes3.objects

    return render(request, 'home/products.html', {'s1s': s1, 's2s': s2, 's3s': s3, 'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def knowledge(request):
    return render(request, 'home/knowledge-library.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def privacyPolicy(request):
    return render(request, 'home/privacypolicy.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def termCondition(request):
    return render(request, 'home/termcondition.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def viewProducts(request, id):
    products = ProductsList.objects.filter(id=id)
    product = ProductsList.objects.get(pk=id)
    image = product.images.all()
    print("request.method",request.method)
    if request.method == 'POST':
        form = JoinUsForm(request.POST)
        print(form.errors)
        name = request.POST.get('NAME', '')
        email = request.POST.get('EMAIL', '')
        company = request.POST.get('COMPANY', '')
        phone = request.POST.get('TELEPHONE', '')
        msg = request.POST.get('MESSAGE', '')
        cart= Cart(request)
        cart.cart.checked_out = True
        cart.cart.save()
        print('cart.cart.checked_out', cart.cart.checked_out)
        print(cart.cart.id)
        if form.is_valid():
            p = RequestQuote(NAME=name, COMPANY=company,
                       TELEPHONE=phone, EMAIL=email, MESSAGE=msg, CART_ID= cart.cart.id )
            p.save()
            return redirect('successview')
        else:
            return render(request, 'home/viewproducts.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd, 'productDetalis': products, 'productImages': image, 'product_id': id,'cart': Cart(request)})
    else:
        return render(request, 'home/viewproducts.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd, 'productDetalis': products, 'productImages': image, 'product_id': id,'cart': Cart(request)})


def add_to_cart(request, product_id, quantity, pid):
    item = ProductImages.objects.get(id=product_id)
    cart = Cart(request)
    cart.add(item, item.unit_price, quantity)
    messages.success(request,f'{item.Description} added to cart!')
    return redirect(viewProducts,pid)

def get_cart(request):
    return render(request, 'cart.html', {'cart': Cart(request)})

def remove_from_cart(request, product_id):
    product = ProductImages.objects.get(id=product_id)
    cart = Cart(request)
    cart.remove(product)
    messages.success(request,f'{product.Description} removed from cart!')
    return redirect(requestQuote)

def update_cart(request, product_id,quantity):
    product = ProductImages.objects.get(id=product_id)
    cart = Cart(request)
    cart.update(product,quantity,product.unit_price)
    messages.success(request,f'{product.Description} updated in cart!')
    return redirect(requestQuote)


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
            p = ContactUs(NAME=name, COMPANY=company,
                          TELEPHONE=phone, EMAIL=email, MESSAGE=msg)
            p.save()
            return redirect('successview')
        else:
            form = ContactForm()
    return render(request, 'home/contactus.html', {'form': ContactForm, 'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


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
            p = JoinUs(NAME=name, COMPANY=company,
                       TELEPHONE=phone, EMAIL=email, MESSAGE=msg)
            p.save()
            return redirect('successview')
        else:
            form = JoinUsForm()
    return render(request, 'home/join-our-team.html', {'form': JoinUsForm, 'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


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
            p = BecomeDistributer(NAME=name, COMPANY=company,
                                  TELEPHONE=phone, EMAIL=email, MESSAGE=msg)
            p.save()
            return redirect('successview')
        else:
            form = DistributerForm()
    return render(request, 'home/become-distributer.html', {'form': DistributerForm, 'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def requestQuote(request):
    if request.method == 'POST':
        form = JoinUsForm(request.POST)
        print(form.errors)
        name = request.POST.get('NAME', '')
        email = request.POST.get('EMAIL', '')
        company = request.POST.get('COMPANY', '')
        phone = request.POST.get('TELEPHONE', '')
        msg = request.POST.get('MESSAGE', '')
        cart= Cart(request)
        cart.cart.checked_out = True
        cart.cart.save()
        print('cart.cart.checked_out', cart.cart.checked_out)
        print(cart.cart.id)
        if form.is_valid():
            p = RequestQuote(NAME=name, COMPANY=company,
                       TELEPHONE=phone, EMAIL=email, MESSAGE=msg, CART_ID= cart.cart.id )
            p.save()
            return redirect('successview')
        else:
            form = JoinUsForm()

    
    return render(request, 'home/requestaquote.html', {'form': JoinUsForm, 'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})





def successview(request):
    return render(request, 'home/thanks.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def page_not_found(request, exception):
    return render(request, 'home/pagenotfound.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def bad_request(request, exception):
    return render(request, 'home/pagenotfound.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def permission_denied(request, exception):
    return render(request, 'home/pagenotfound.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})


def server_error(request, exception):
    return render(request, 'home/pagenotfound.html', {'aboutusdropdown': aboutUsDd,  'specialtiesdropdown': SpecialtiesDd, 'joinusdropdown': joinUsDd, 'productdropdown': ProductsListDd,  'product1dropdown': ProductCategoryDd,'cart': Cart(request)})
