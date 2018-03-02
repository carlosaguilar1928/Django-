 #!/bin/bash
   yum install -y python pip
   pip install -y virtualenv
   pip install --upgrade pip
   mkdir /opt/django
   cd /opt/django
   yum install -y epel-release
   yum install -y python34 python-pip 
   virtualenv -p python3 django
   cd opt/django
   source bin/activate
   pip install django 
   django-admin startproject project1
   chown -R carlosaguilar1928 django
   ls -l django/django
   source /opt/django/django/bin/activate
   
   myip=( curl https://api.ipify.org )
   sed -i "s/ALLOWED_HOST = \[\]/ALLOWED_HOSTS = \['"$myip"'\]/g" /opt/django/project1/project/settings.py

   su - carlosaguilar1928  
   /opt/django/django/project1/manage.py runserver 0.0.0.0:8000&
   yum install -y git
   
