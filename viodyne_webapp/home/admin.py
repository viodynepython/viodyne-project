from django.contrib import admin
from .models import HomeSlider, HomeSlider2, Homeslide3, ContactUs, JoinUs, HomeS1, HomeS2, Homes3, AboutUs, AboutUsSlider, SpecialtiesSlider, JoinUsSlider,ProductsList, ProductCategory,BecomeDistributer,ProductSubCategory,ProductImages

class PropertyImageInline(admin.TabularInline):
    model = ProductImages
    extra = 1

class PropertyAdmin(admin.ModelAdmin):
    inlines = [ PropertyImageInline, ]



# Register your models here.
admin.site.register(HomeSlider)
admin.site.register(HomeSlider2)
admin.site.register(Homeslide3)
admin.site.register(ContactUs)
admin.site.register(JoinUs)
admin.site.register(AboutUs)
admin.site.register(HomeS1)
admin.site.register(HomeS2)
admin.site.register(Homes3)
admin.site.register(AboutUsSlider)
admin.site.register(SpecialtiesSlider)
admin.site.register(JoinUsSlider)
admin.site.register(ProductCategory)
admin.site.register(BecomeDistributer)
admin.site.register(ProductSubCategory)
admin.site.register(ProductsList, PropertyAdmin)