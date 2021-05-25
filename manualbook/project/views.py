
from .models import Project,Projectdocument
from django.shortcuts import redirect, render
from .forms import ProjectForm,ProjectdocumentForm
from django.contrib.auth.decorators import login_required,user_passes_test  
from django.http import HttpResponse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q

# ADMIN BACKEND
@login_required(login_url='login')
@user_passes_test(lambda u: u.is_superuser)
def addproject(request):
    if request.method =="POST":
        form = ProjectForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/projectlist')
            except:
                pass    
    else:
        form = ProjectForm()
        context = {
            'form' : form
        }
      
    return render(request,'addproject.html',context)    

@login_required(login_url='login')
@user_passes_test(lambda u: u.is_superuser)
def projectlist(request):
    if request.method == 'GET':
        query= request.GET.get('q')

        submitbutton= request.GET.get('submit')

        if submitbutton is not None:
            lookups= Q(title__icontains=query)

            results= Project.objects.filter(lookups).distinct()
            context ={
                      'data':results,
                      'submitbutton': submitbutton,
                      'category' : 'projectlist'
                     }         
            return render(request,'projectlist.html',context)

        else:
            data = Project.objects.all().order_by('-date_updated')
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
                'category' : 'projectlist'
            }
            return render(request,'projectlist.html',context)
    else:
        return render(request,'projectlist.html')
    

@login_required(login_url='login')
@user_passes_test(lambda u: u.is_superuser)
def deleteproject(request,id):
    post = Project.objects.get(id=id)
    post.delete()
    return redirect("/projectlist")

@login_required(login_url='login')
@user_passes_test(lambda u: u.is_superuser)
def editproject(request,id):
    post = Project.objects.get(id=id)
    form = ProjectForm(instance=post)
    return render(request,'editproject.html',{'data':form,'post':post})  

def updatepproject(request,id):
    try:
         post = Project.objects.get(id=id)
    except Project.DoesNotExists:
        return HttpResponse(status=status.HTTP_204_NOT_FOUND)
   
    if request.method == 'POST':
        form =  ProjectForm(request.POST,instance=post)
        if form.is_valid():
            form.save()
            return redirect('/projectlist')
        else:
            context = {'data':form}
            return render(request, 'editproject.html', context)    
    
@login_required(login_url='login')     
@user_passes_test(lambda u: u.is_superuser)
def projectdocumentlist(request,projectid):
    if request.method == 'GET':
        query = request.GET.get('q')
        submitbutton = request.GET.get('submit')

        if submitbutton is not None:
            lookups = Q(title_icontains=query)&Q(Project_id=projectid)
            results = Projectdocument.objects.filter(lookups).distinct()
            context = {
                        'data':results,
                        'submitbutton':submitbutton,
                        'category':'projectdocumentlist',
                        'projectid':projectid
                      }
            return render (request,'projectdocumentlist.html',context)
        else:
            data = Projectdocument.objects.filter(Project_id=projectid).order_by('date_upload')
            page = request.GET.get('page',1)
            paginator = Paginator(data,5)

            try:
                content = paginator.page(page)
            except PageNotAnInteger:
                content = paginator.page(page)
            except EmptyPage:
                content = paginator.page(paginator.num_pages)    
            context={
                'data':content,
                'category':'projectdocumentlist/',
                'projectid':projectid
            }    
            return render(request,'projectdocumentlist.html',context)

    else:
        return render(request,'projectdocumentlist.html')        

@login_required(login_url='login')
@user_passes_test(lambda u: u.is_superuser)
def projectdocumentadd(request):
    if request.method =="POST":
        form = ProjectdocumentForm(request.POST,request.FILES)
        if form.is_valid():
            try:
                form.save()
                return redirect('/projectlist')
            except:
                pass    
    else:
        form = ProjectdocumentForm()
        context = {
            'form' : form
        }
      
    return render(request,'projectdocumentadd.html',context)    

@login_required(login_url='login')
@user_passes_test(lambda u:u.is_superuser)
def projectdocumentdelete(request,id):
    post = Projectdocument.objects.get(id=id)
    post.delete()
    return redirect("/projectlist")


@login_required(login_url='login')     
def viewdocument(request,projectid):
    if request.method == 'GET':
        query = request.GET.get('q')
        submitbutton = request.GET.get('submit')

        if submitbutton is not None:
            lookups = Q(title_icontains=query)&Q(Project_id=projectid)
            results = Projectdocument.objects.filter(lookups).distinct()
            context = {
                        'data':results,
                        'submitbutton':submitbutton,
                        'category':'home',
                        'projectid':projectid
                      }
            return render (request,'viewdocument.html',context)
        else:
            data = Projectdocument.objects.filter(Project_id=projectid).order_by('date_upload')
            page = request.GET.get('page',1)
            paginator = Paginator(data,5)

            try:
                content = paginator.page(page)
            except PageNotAnInteger:
                content = paginator.page(page)
            except EmptyPage:
                content = paginator.page(paginator.num_pages)    
            context={
                'data':content,
                'category':'home',
                'projectid':projectid
            }    
            return render(request,'viewdocument.html',context)

    else:
        return render(request,'viewdocument.html')        













# END ADMIN BACKEND
