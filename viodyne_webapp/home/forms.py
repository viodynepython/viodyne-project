from django import forms
from .models import ContactUs
from .models import JoinUs
class ContactForm(forms.Form):
    NAME = forms.CharField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'Name'
        }
    ))
    COMPANY = forms.CharField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'Company'
        }
    ))
    TELEPHONE = forms.IntegerField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'Telephone'
        }
    ))
    EMAIL = forms.EmailField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'Email'
        }
    ))
    MESSAGE = forms.CharField(widget=forms.Textarea(
        attrs={
        'rows': 3, 'cols': 5,
        'class':'form-control',
        'placeholder':'Message'
        }
    ))
class JoinUsForm(forms.Form):
    FIRST_NAME = forms.CharField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'First Name'
        }
    ))
    LAST_NAME = forms.CharField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'Last Name'
        }
    ))
    TELEPHONE = forms.IntegerField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'Telephone'
        }
    ))
    EMAIL = forms.EmailField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'Email'
        }
    ))
    MESSAGE = forms.CharField(widget=forms.Textarea(
        attrs={
        'rows': 3, 'cols': 5,
        'class':'form-control',
        'placeholder':'Message'
        }
    ))
