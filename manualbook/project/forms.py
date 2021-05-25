from django import forms
from django.db import models
from django.forms import fields
from .models import Project,Projectdocument

class ProjectForm(forms.ModelForm):
    class Meta:
        model = Project
        fields="__all__"


class ProjectdocumentForm(forms.ModelForm):
    class Meta:
        model = Projectdocument
        fields="__all__"        