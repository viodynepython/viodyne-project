from django import forms
from .models import ContactUs
from .models import JoinUs, AboutUs
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


class DistributerForm(forms.Form):
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




class AboutForm(forms.Form):
    Name = forms.CharField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        }
    ))
    Email = forms.EmailField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        }
    ))
    Comment = forms.CharField(widget=forms.Textarea(
        attrs={
        'rows': 3, 'cols': 5,
        'class':'form-control',
        }
    ))
