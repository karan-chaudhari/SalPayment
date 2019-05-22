from django.urls import path
from . import views
from .utils import GeneratePdf

urlpatterns = [
	path('', views.home, name='home'),
	path('about/', views.about, name='about'),
	path('contact/', views.contact, name='contact'),
	path('register/', views.register, name='register'),
	path('profile/', views.profile, name='profile'),
	path('update/', views.update, name='update'),
	path('payfee/', views.payfee, name='payfee'),
	path('confirm/', views.confirm, name='confirm'),
	path('fee-receipt/',GeneratePdf.as_view()),
	path('login/', views.login, name='login'),
	path('logout/', views.logout, name='logout'),
]