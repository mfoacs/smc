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
application = django.core.handlers.wsgi.WSGIHandler()i


#import os
#os.environ['DJANGO_SETTINGS_MODULE'] = 'SMC.settings'

#import django.core.handlers.wsgi

#application = django.core.handlers.wsgi.WSGIHandler()
