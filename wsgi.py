#import os

#PROJECT_ROOT = os.path.dirname(os.path.abspath(__file__))
#settings_module = "%s.settings" % PROJECT_ROOT.split(os.sep)[-1]
#os.environ.setdefault("DJANGO_SETTINGS_MODULE", settings_module)

#from django.core.wsgi import get_wsgi_application
#application = get_wsgi_application()

"""

This module contains the WSGI application used by Django's development server
and any production WSGI deployments. It should expose a module-level variable
named ``application``. Django's ``runserver`` and ``runfcgi`` commands discover
this application via the ``WSGI_APPLICATION`` setting.

Usually you will have the standard Django WSGI application here, but it also
might make sense to replace the whole Django WSGI application with a custom one
that later delegates to the Django one. For example, you could introduce WSGI
middleware here, or combine a Django application with an application of another
framework.

"""

import os
import sys

path = '/home/wiseweb/public_html'
if path not in sys.path:
    sys.path.append(path)


os.environ['DJANGO_SETTINGS_MODULE'] = 'SMC.settings'

# This application object is used by any WSGI server configured to use this
# file. This includes Django's development server, if the WSGI_APPLICATION
# setting points here.

import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()

# Apply WSGI middleware here.
# from helloworld.wsgi import HelloWorldApplication
# application = HelloWorldApplication(application)
