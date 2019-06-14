#/bin/bash

set -eu -o pipefail

echo hello from run.sh

# check
python manage.py check

# test apps
python manage.py test polls

# migration
python manage.py migrate

# 古いdbコンテナ立ちっぱだったとき用にデータ消す
python manage.py flush --noinput

# admin登録
# python manage.py createsuperuser
# 参考: https://stackoverflow.com/questions/6244382/how-to-automate-createsuperuser-on-django
echo "import os; from django.contrib.auth.models import User; User.objects.create_superuser(os.environ['ADMIN_USER_NAME'], 'admin@example.com', os.environ['ADMIN_PASSWORD'])" | python manage.py shell

# 初期データ
python manage.py loaddata polls/fixtures/initial_data

python manage.py runserver 0:8000
