#!/bin/bash
   yum install python-pip -y
   pip install virtualenv
   pip install --upgrade pip
   
   # setting up the django environment
   mkdir /opt/django
   cd /opt/django
   yum install epel-release -y
   yum install python34 -y
   virtualenv -p python3 django
   cd /opt/django/django
   source /opt/django/django/bin/activate

   # installing django
   pip install django
   django-admin startproject project1
   chown -R carlosaguilar1928 /opt/django/*
  
   myip=( curl https://api.ipify.org )
   sed -i "s/ALLOWED_HOST = \[\]/ALLOWED_HOSTS = \['"$myip"'\]/g" /opt/django/django/project1/project1/settings.py
 
  # start the django service 
   sudo -u carlosaguilar1928
   source /opt/django/django/bin/activate
   /opt/django/django/project1/manage.py runserver 0.0.0.0:8000&
   yum install -y git
