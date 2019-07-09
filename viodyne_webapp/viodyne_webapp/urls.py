"""viodyne_webapp URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
import home.views
from django.conf import settings
from django.conf.urls.static import static
from django.conf.urls import (
handler400, handler403, handler404, handler500
)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home.views.index, name='index'),
    path('about-us/', home.views.aboutus, name='aboutus'),
    path('contact-us/', home.views.contactus, name='contactus'),
    path('join-us/', home.views.joinus, name='joinus'),
    path('successview', home.views.successview, name='successview'),
    path('products/', home.views.products, name='products'),
    path('knowledge-library/', home.views.knowledge, name='knowledge'),
    path('become-distributer/', home.views.becomeDistributer, name='becomeDistributer'),
    path('privacypolicy/', home.views.privacyPolicy, name='privacyPolicy'),
    path('termcondition/', home.views.termCondition, name='termCondition'),
    path('requestquote/', home.views.requestQuote, name='requestQoute')
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

#handler400 = 'home.views.bad_request'
#handler403 = 'home.views.permission_denied'
handler404 = 'home.views.page_not_found'
#handler500 = 'home.views.server_error'