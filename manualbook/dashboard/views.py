from typing import ContextManager
from category.models import Category
from dashboard.models import Post
from django.shortcuts import redirect, render
from .forms import PostForm
from django.contrib.auth.decorators import login_required,user_passes_test  
from django.http import HttpResponse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from django.db.models import Q
from django.core.files.storage import FileSystemStorage
from project.models import Project
from django.contrib.auth.models import User, Group

# Login Page
def loginPage(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request,username=username,password=password)
        if user is not None:
            login(request,user)
            return redirect('home')
        else:
            messages.info(request,'Username OR password is incorrect')

    context={}
    return render(request,'login.html',context)        

def logoutUser(request):
    logout(request)
    return redirect('login')
# End Login Page

# USER FRONTEND
@login_required(login_url='login')
def home(request):
    if request.user.groups.filter(name__in=['ecommerce']).exists():
       group = "ecommerce"
       categoryid='1'
    elif request.user.groups.filter(name__in=['finance']).exists():
        group = "finance"
        categoryid='2'
    elif request.user.groups.filter(name__in=['project']).exists():
        group = "project"
        categoryid='3' 
    elif request.user.groups.filter(name__in=['hrd']).exists():
        group = "hrd"
        categoryid='4'  
    elif request.user.groups.filter(name__in=['it']).exists():
        group = "it"
        categoryid='5' 
    else:
        group = "operations"
        categoryid='6'      
   
    if request.method == 'GET':
        query= request.GET.get('q')

        submitbutton= request.GET.get('submit')

        if submitbutton is not None:
            lookups= Q(title__icontains=query)&Q(Category=categoryid)

            results= Project.objects.filter(lookups).distinct()
            context ={
                      'data':results,
                      'submitbutton': submitbutton,
                      'category' : 'home',
                      'groups': group
                     }         
            return render(request,'projecthome.html',context)

        else:
            data= Project.objects.filter(Category=categoryid).order_by('-date_updated')
            # data = Project.objects.all().order_by('-date_updated')
            page = request.GET.get('page', 1)

            paginator = Paginator(data, 5)
            try:
                content = paginator.page(page)
            except PageNotAnInteger:
                content = paginator.page(1)
            except EmptyPage:
                content = paginator.page(paginator.num_pages)
            context ={
                'data':content,
                'category' : 'home',
                'groups': group
            }
            return render(request,'projecthome.html',context)
    else:
        return render(request,'projecthome.html')    

@login_required(login_url='login')
@user_passes_test(lambda u: u.groups.filter(name='ecommerce').exists())
def ecommerce(request):
    if request.method == 'GET':
        query= request.GET.get('q')

        submitbutton= request.GET.get('submit')

        if submitbutton is not None:
            lookups= Q(title__icontains=query) | Q(body__icontains=query)

            results= Post.objects.filter(lookups).distinct()
            context ={
                      'data':results,
                      'submitbutton': submitbutton,
                      'category' : 'ecommerce'
                     }         
            return render(request,'home.html',context)

        else:
            data = Post.objects.filter(Category=1).order_by('-date_added')
            page = request.GET.get('page', 1)

            paginator = Paginator(data, 5)
            try:
                content = paginator.page(page)
            except PageNotAnInteger:
                content = paginator.page(1)
            except EmptyPage:
                content = paginator.page(paginator.num_pages)
            context ={
                'data':content,
                'category' : 'ecommerce'
            }
            return render(request,'home.html',context)
    else:
        return render(request,'home.html')
        

@login_required(login_url='login')
@user_passes_test(lambda u: u.groups.filter(name='finance').exists())
def finance(request):
    if request.method == 'GET':
        query= request.GET.get('q')

        submitbutton= request.GET.get('submit')

        if submitbutton is not None:
            lookups= Q(title__icontains=query) | Q(body__icontains=query)

            results= Post.objects.filter(lookups).distinct()
            context ={
                      'data':results,
                      'submitbutton': submitbutton,
                      'category' : 'finance'
                     }         
            return render(request,'home.html',context)

        else:
            data = Post.objects.filter(Category=6).order_by('-date_added')
            page = request.GET.get('page', 1)

            paginator = Paginator(data, 5)
            try:
                content = paginator.page(page)
            except PageNotAnInteger:
                content = paginator.page(1)
            except EmptyPage:
                content = paginator.page(paginator.num_pages)
            context ={
                'data':content,
                'category' : 'finance'
            }
            return render(request,'home.html',context)
    else:
        return render(request,'home.html')
        

@login_required(login_url='login')
@user_passes_test(lambda u: u.groups.filter(name='project').exists())
def project(request):
    if request.method == 'GET':
        query= request.GET.get('q')

        submitbutton= request.GET.get('submit')

        if submitbutton is not None:
            lookups= Q(title__icontains=query) | Q(body__icontains=query)

            results= Post.objects.filter(lookups).distinct()
            context ={
                      'data':results,
                      'submitbutton': submitbutton,
                      'category' : 'project'
                     }         
            return render(request,'home.html',context)

        else:
            data = Post.objects.filter(Category=2).order_by('-date_added')
            page = request.GET.get('page', 1)

            paginator = Paginator(data, 5)
            try:
                content = paginator.page(page)
            except PageNotAnInteger:
                content = paginator.page(1)
            except EmptyPage:
                content = paginator.page(paginator.num_pages)
            context ={
                'data':content,
                'category' : 'project'
            }
            return render(request,'home.html',context)
    else:
        return render(request,'home.html')
    

@login_required(login_url='login')
@user_passes_test(lambda u: u.groups.filter(name='hrd').exists())
def hrd(request):
    if request.method == 'GET':
        query= request.GET.get('q')

        submitbutton= request.GET.get('submit')

        if submitbutton is not None:
            lookups= Q(title__icontains=query) | Q(body__icontains=query)

            results= Post.objects.filter(lookups).distinct()
            context ={
                      'data':results,
                      'submitbutton': submitbutton,
                      'category' : 'hrd'
                     }         
            return render(request,'home.html',context)

        else:
            data = Post.objects.filter(Category=4).order_by('-date_added')
            page = request.GET.get('page', 1)

            paginator = Paginator(data, 5)
            try:
                content = paginator.page(page)
            except PageNotAnInteger:
                content = paginator.page(1)
            except EmptyPage:
                content = paginator.page(paginator.num_pages)
            context ={
                'data':content,
                'category' : 'hrd'
            }
            return render(request,'home.html',context)
    else:
        return render(request,'home.html')

@login_required(login_url='login')
@user_passes_test(lambda u: u.groups.filter(name='it').exists())
def it(request):
    if request.method == 'GET':
        query= request.GET.get('q')

        submitbutton= request.GET.get('submit')

        if submitbutton is not None:
            lookups= Q(title__icontains=query) | Q(body__icontains=query)

            results= Post.objects.filter(lookups).distinct()
            context ={
                      'data':results,
                      'submitbutton': submitbutton,
                      'category' : 'it'
                     }         
            return render(request,'home.html',context)

        else:
            data = Post.objects.filter(Category=5).order_by('-date_added')
            page = request.GET.get('page', 1)

            paginator = Paginator(data, 5)
            try:
                content = paginator.page(page)
            except PageNotAnInteger:
                content = paginator.page(1)
            except EmptyPage:
                content = paginator.page(paginator.num_pages)
            context ={
                'data':content,
                'category' : 'it'
            }
            return render(request,'home.html',context)
    else:
        return render(request,'home.html')

@login_required(login_url='login')
@user_passes_test(lambda u: u.groups.filter(name='operations').exists())
def operations(request):
    if request.method == 'GET':
        query= request.GET.get('q')

        submitbutton= request.GET.get('submit')

        if submitbutton is not None:
            lookups= Q(title__icontains=query) | Q(body__icontains=query)

            results= Post.objects.filter(lookups).distinct()
            context ={
                      'data':results,
                      'submitbutton': submitbutton,
                      'category' : 'operations'
                     }         
            return render(request,'home.html',context)

        else:
            data = Post.objects.filter(Category=6).order_by('-date_added')
            page = request.GET.get('page', 1)

            paginator = Paginator(data, 5)
            try:
                content = paginator.page(page)
            except PageNotAnInteger:
                content = paginator.page(1)
            except EmptyPage:
                content = paginator.page(paginator.num_pages)
            context ={
                'data':content,
                'category' : 'operations'
            }
            return render(request,'home.html',context)
    else:
        return render(request,'home.html')
  

@login_required(login_url='login')
def datailbook(request,id):
    content = Post.objects.get(id=id)
    context = {
        'data':content
    }
    return render(request,'detail.html',context)  

# END USER FRONT END

# ADMIN BACKEND
@login_required(login_url='login')
@user_passes_test(lambda u: u.is_superuser)
def addpost(request):
    if request.method =="POST":
        # myfile = request.FILES['file']
        # fs = FileSystemStorage()
        # filename = fs.save(myfile.name,myfile)
        # uploaded_file_url = fs.url(filename)
        form = PostForm(request.POST, request.FILES)
        if form.is_valid():
            try:
                form.save()
                return redirect('/backend')
            except:
                pass    
    else:
        form = PostForm()
        context = {
            'form' : form
        }
      
    return render(request,'adminadd.html',context)    

@login_required(login_url='login')
@user_passes_test(lambda u: u.is_superuser)
def admin(request):
    post_list = Post.objects.all()
    page = request.GET.get('page', 1)

    paginator = Paginator(post_list, 5)
    try:
        post = paginator.page(page)
    except PageNotAnInteger:
        post = paginator.page(1)
    except EmptyPage:
        post = paginator.page(paginator.num_pages)

    return render(request,"admin.html",{'post':post})

@login_required(login_url='login')
@user_passes_test(lambda u: u.is_superuser)
def deletepost(request,id):
    post = Post.objects.get(id=id)
    post.delete()
    return redirect("/backend")

@login_required(login_url='login')
@user_passes_test(lambda u: u.is_superuser)
def editpost(request,id):
    post = Post.objects.get(id=id)
    form = PostForm(instance=post)
    return render(request,'admiedit.html',{'data':form,'post':post})  


def updatepost(request,id):
    try:
         post = Post.objects.get(id=id)
    except Post.DoesNotExists:
        return HttpResponse(status=status.HTTP_204_NOT_FOUND)
   
    if request.method == 'POST':
        form =  PostForm(request.POST, request.FILES,instance=post)
        if form.is_valid():
            form.save()
            return redirect('/backend')
        else:
            context = {'data':form}
            return render(request, 'admiedit.html', context)    
    
     

# END ADMIN BACKEND