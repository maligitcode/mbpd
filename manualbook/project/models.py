from category.models import Category
from django.db import models



class Project(models.Model):
    Category = models.ForeignKey(Category,related_name="Project",on_delete=models.CASCADE)
    title = models.CharField(max_length=225)
    progress = models.IntegerField(default=0)
    
    date_updated = models.DateTimeField(auto_now_add=True)

    class Meta:
            db_table="project"

    def __str__(self):
        return self.title

class Projectdocument(models.Model):
    Project = models.ForeignKey(Project,related_name="Document",on_delete=models.CASCADE)
    title = models.CharField(max_length=225)
    file = models.FileField(upload_to='documents/',null=True, blank=True)
    
    date_upload = models.DateTimeField(auto_now_add=True)

    class Meta:
            db_table="document"

    def __str__(self):
        return self.title


