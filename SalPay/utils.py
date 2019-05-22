from django.shortcuts import HttpResponse
from django.views.generic import View
from django.template.loader import get_template
from .views import render_to_pdf
from .models import Student, Card

class GeneratePdf(View):
	def get(self, request, *args, **kwargs):
		template = get_template('invoice.html')
		enroll = request.session['enroll']
		detail = Student.objects.filter(enrollment=enroll)
		paidDate = Card.objects.filter(enroll=enroll)
		context = {'detail':detail[0],'paid_date':paidDate[0].paid_date}
		pdf = render_to_pdf('invoice.html', context)
		if pdf:
			response = HttpResponse(pdf, content_type='application/pdf')
			filename = f"fee-receipt{enroll}.pdf"
			content = "inline; filename=%s" %(filename)
			download = request.GET.get("download")
			if download:
				content = "attachment; filename=%s" %(filename)
			response['Content-Disposition'] = content
			return response
		else:
			return HttpResponse("Not Found")	
 