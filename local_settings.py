
DEBUG = False

TEST_RUNNER = 'django.test.simple.DjangoTestSuiteRunner'

DATABASES = {
    "default": {
        # Ends with "postgresql_psycopg2", "mysql", "sqlite3" or "oracle".
        "ENGINE": "django.db.backends.postgresql_psycopg2",
        # DB name or path to database file if using sqlite3.
        "NAME": "smc",
        # Not used with sqlite3.
        "USER": "wiseweb",
        # Not used with sqlite3.
        "PASSWORD": "1pBbt3Gg",
        # Set to empty string for localhost. Not used with sqlite3.
        "HOST": "",
        # Set to empty string for default. Not used with sqlite3.
        "PORT": "",
    }
}

ALLOWED_HOSTS = ['.swissmontessoricentre.ch',]
BLOG_USE_FEATURED_IMAGE = True
COMMENTS_USE_RATINGS = False
PAGES_MENU_SHOW_ALL = False
