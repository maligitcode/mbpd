from django.urls import path

from .views import projectdocumentlist,projectdocumentadd,projectdocumentdelete,viewdocument
from .views import projectlist,addproject,editproject,deleteproject,updatepproject

urlpatterns = [
    path('projectlist',projectlist,name='projectlist'),
    path('addproject',addproject,name='addproject'),
    path('editproject/<int:id>',editproject,name='editproject'),
    path('deleteproject/<int:id>',deleteproject,name='deleteproject'),
    path('updatepproject/<int:id>',updatepproject,name='updatepproject'),
    path('projectdocumentadd',projectdocumentadd,name='projectdocumentadd'),
    path('projectdocumentdelete/<int:id>',projectdocumentdelete,name='projectdocumentdelete'),
    path('projectdocumentlist/<int:projectid>',projectdocumentlist, name='projectdocumentlist'),
    path('viewdocument/<int:projectid>',viewdocument, name='viewdocument')
]
