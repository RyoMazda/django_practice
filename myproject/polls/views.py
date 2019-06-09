from django.shortcuts import render
from django.http import HttpResponse
from django.core.handlers.wsgi import WSGIRequest


# Create your views here.
def index(request: WSGIRequest):
    return HttpResponse("pigimaru. You're at the polls index.")

