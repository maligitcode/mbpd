from django.db import models


class Category(models.Model):
    categoryname = models.CharField(max_length=20)
    categorydesc = models.TextField()
    link = models.CharField(max_length=20)

    class Meta:
        db_table="category"

    def __str__(self):
        return self.categoryname    