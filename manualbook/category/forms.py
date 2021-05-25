from django import forms
from django.forms import fields
from category.models import Category

class CategoryForm(forms.ModelForm):
    class Meta:
        model:Category
        fields="_all_"