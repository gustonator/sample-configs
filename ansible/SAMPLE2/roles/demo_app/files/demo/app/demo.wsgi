activate_this = '/var/www/html/demo/.venv/bin/activate_this.py'
execfile(activate_this, dict(__file__=activate_this))

import os
os.environ['DATABASE_URI'] = 'mysql://demo:demo@192.168.56.73/demo'

import sys
sys.path.insert(0, '/var/www/html/demo')

from demo import app as application
