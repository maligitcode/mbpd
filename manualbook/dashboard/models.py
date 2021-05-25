from category.models import Category
from django.db import models

# CKEDITOR
from ckeditor_uploader.fields import RichTextUploadingField


class Post(models.Model):
    Category = models.ForeignKey(Category,related_name="post",on_delete=models.CASCADE)
    title = models.CharField(max_length=225)
    body = RichTextUploadingField(blank=True)
    file= models.FileField(upload_to='documents/',null=True, blank=True)

    date_added = models.DateTimeField(auto_now_add=True)

    class Meta:
            db_table="post"

    def __str__(self):
        return self.title


