from django.shortcuts import render
from django.http import HttpRequest, HttpResponse


def index(request):
    return HttpResponse('Welcome to MULK Publications')
