from django import forms
from .models import ContactUs
from .models import JoinUs
class ContactForm(forms.ModelForm):
    class Meta:
        model= ContactUs
        fields= ('NAME','COMPANY','TELEPHONE','EMAIL','MESSAGE')

class JoinusForm(forms.ModelForm):
    class Meta:
        model= JoinUs
        fields= ('NAME','COMPANY','TELEPHONE','EMAIL','MESSAGE')
