from category.models import Category

def menu(request):
    category = Category.objects.all().order_by('categoryname')
    return { 'menu':category}