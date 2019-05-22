from django.shortcuts import render, redirect, HttpResponse
from django.contrib import messages
from .models import UserRegister, Contact, Student, Card
from passlib.hash import pbkdf2_sha256
from xhtml2pdf import pisa
from io import BytesIO
from django.template.loader import get_template

def home(request):
	return render(request, 'home.html')

def about(request):
	return render(request, 'about.html')	

def contact(request):
	if request.method == "POST":
		name = request.POST.get('name')
		email = request.POST.get('email')
		phone = request.POST.get('phone')
		msg = request.POST.get('msg')
		contact = Contact(name=name, email=email, phone=phone, msg=msg)
		contact.save()
		messages.success(request, "Your details has been submitted. We will response you very soon.")
	return render(request, 'contact.html')	

def register(request):
	if request.method == "POST":
		enroll = request.POST.get('enroll')
		email = request.POST.get('email')
		password = request.POST.get('pass')
		cpassword = request.POST.get('cpass')
		user_enroll = UserRegister.objects.filter(enroll=enroll)
		user_email = UserRegister.objects.filter(email=email)
		if user_enroll and not user_email:
			messages.info(request, "Enrollment is already exist!")
			return redirect('register')	
		if user_email and not user_enroll:
			messages.info(request, "Email is already exist!")
			return redirect('register')
		if user_enroll and user_email:
			messages.info(request, "Enrollment & Email is already exist!")
			return redirect('register')		
		if password != cpassword:
			messages.info(request, "Please Enter the same password")
			return redirect('register')	
		if password == cpassword:
			enc_password = pbkdf2_sha256.encrypt(password, rounds=12000, salt_size=32)
			user = UserRegister(enroll=enroll, email=email, password=enc_password)
			user.save()	
			request.session['enroll'] = enroll
			return redirect('profile')	
	return render(request, 'register.html')		

def login(request):
	if 'enroll' in request.session:
		return redirect('profile')
	if request.method == "POST":
		enroll = request.POST.get('enrollment')
		password = request.POST.get('pass')
		user = UserRegister.objects.filter(enroll=enroll)
		try:
			upass = pbkdf2_sha256.verify(password, user[0].password)
		except:
			upass = False
		if user and upass:
			request.session['enroll'] = user[0].enroll
			return redirect('profile')
		if user and not upass:
			messages.error(request, "Invalid Password")	
			return redirect('login')
		if not user and not upass:
			messages.error(request, "Invalid Enrollment & Password")	
			return redirect('login')
	return render(request, 'login.html')	

def logout(request):
	del request.session['enroll']
	return redirect('login')

def profile(request):
	enroll = request.session['enroll']
	student = Student.objects.filter(enrollment=enroll)
	user_email = UserRegister.objects.filter(enroll=enroll)
	if student:
		context = {'student':student[0],'user_email':user_email[0].email}
		return render(request, 'profile.html', context)	
	else:
		update = True
		context = {'update':update, 'user_email':user_email[0].email}
		return render(request, 'profile.html', context)	

def update(request):
	if request.method == "POST":
		enroll = request.POST.get('enroll')
		name = request.POST.get('name')
		email = request.POST.get('email')
		course = request.POST.get('course')
		branch = request.POST.get('branch')
		phone = request.POST.get('phone')
		dob = request.POST.get('dob')
		fee = request.POST.get('fee')

		user_email = UserRegister.objects.filter(enroll=enroll)
		user = user_email[0]
		user.email = email
		user.save()

		student = Student.objects.filter(enrollment=enroll)
		if student:
			istudent = student[0]
			istudent.enrollment = enroll
			istudent.name = name
			istudent.email = email
			istudent.course = course
			istudent.branch = branch
			istudent.phone = phone
			istudent.dob = dob

			istudent.save()
		else:
			student = Student(enrollment=enroll, name=name, email=email, 
				course=course, branch=branch, phone=phone, dob=dob, fees=fee)
			student.save()	

		messages.success(request, "Your profile updated!")

	return redirect('profile')		

def payfee(request):
	enroll = request.session['enroll']
	paid = Card.objects.filter(enroll=enroll)
	if paid:
		return render(request, 'confirm.html')
	else:	
		student= Student.objects.filter(enrollment=enroll)
		context = {'student': student[0]}
		return render(request, 'payfee.html', context)	

def confirm(request):
	enroll = request.session['enroll']
	if request.method == "POST":
		card = request.POST.get('card')
		cvv = request.POST.get('cvv')
		date = request.POST.get('date')
		if len(card) >= 15:
			card_no = Card(enroll=enroll, card=card, cvv=cvv, date=date)
			card_no.save()
			return render(request, 'confirm.html')
		else:
			messages.error(request, "Please enter valid card number")
			return redirect('payfee')				

def render_to_pdf(template_src, context_dict={}):
	template = get_template(template_src)
	html = template.render(context_dict)			
	result = BytesIO()
	pdf = pisa.pisaDocument(BytesIO(html.encode("ISO-8859-1")), result)
	if not pdf.err:
		return HttpResponse(result.getvalue(), content_type='application/pdf')
	return None	