from django.urls import path

from .views import loginPage,logoutUser,home,ecommerce,finance,project,hrd,it,operations
from .views import datailbook,updatepost,addpost,deletepost,admin,editpost

urlpatterns = [
    path('',home,name='home'),
    path('ecommerce',ecommerce,name='ecommerce'),  
    path('finance',finance,name='finance'), 
    path('project',project,name='project'), 
    path('hrd',hrd,name='hrd'), 
    path('it',it,name='it'), 
    path('operations',operations,name='operations'),
    path('datailbook/<int:id>',datailbook,name='datailbook'),
    path('addpost',addpost,name='addpost'),
    path('backend',admin,name='backend'),
    path('deletepost/<int:id>',deletepost,name='deletepost'),
    path('editpost/<int:id>',editpost,name='editpost'),
    path('updatepost/<int:id>',updatepost,name='updatepost'),
    path('login/', loginPage, name="login"),  
	path('logout/',logoutUser, name="logout"),
]
