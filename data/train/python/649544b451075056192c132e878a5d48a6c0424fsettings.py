#!/usr/bin/env python
# vim: ai ts=4 sts=4 et sw=4 coding=utf-8
# maintainer: dgelvin

from django.conf import settings

INSTALLED_APPS.extend([
    'django.contrib.admin',
    'reversion',
    'south',
    'djcelery',
    'alerts'
])

DEBUG = False

BROKER_HOST = "localhost"
BROKER_PORT = 5672
BROKER_USER = "childcount"
BROKER_PASSWORD = "childcount"
BROKER_VHOST = "ccvhost"

CELERY_DISABLE_RATE_LIMITS = True
CELERY_RESULT_BACKEND = 'amqp'
CELERY_LOADER='django'
CELERY_AMQP_TASK_RESULT_EXPIRES = 60*60
CELERY_IMPORTS = ('reportgen.definitions',)

CACHE_BACKEND = 'file:///var/cache/childcount?max_entries=10000&cull_frequency=2'

ADMIN_MEDIA_PREFIX = '/adminmedia/'

# Set timezone if you get the error undefined timzone
# uncomment below and modify TIME_ZONE as appropriate
# TIME_ZONE = 'Africa/Nairobi'
# time.tzset()

settings.configure(**locals())
