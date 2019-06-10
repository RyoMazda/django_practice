# django_practice


## コマンドメモ
```bash
docker-compose build
docker-compose up
docker-compose run --rm --service-ports web bash
```

```bash
python manage.py runserver 0:8000
# サーバーが走る

python manage.py migrate

python manage.py makemigrations pollls
# migration fileが生成される

python manage.py sqlmigrate polls 0001
# migration fileのdry run的な

python manage.py check
```


## テスト
```bash
docker-compose run --rm web python manage.py test polls
```


## モデルと戯れる
```bash
python manage.py shell
```

```python
from polls.models import Choice, Question
Question.objects.all()

from django.utils import timezone
q = Question(question_text="What's new?", pub_date=timezone.now())
q.question_text
q.id  # まだない
q.save()
q.id  # できてる
Question.objects.all()
```


## モデル変更の手続き
- Change your models (in models.py).
- Run `python manage.py makemigrations` to create migrations for those changes
- Run `python manage.py migrate` to apply those changes to the database.


## アドミン登録
```bash
python manage.py createsuperuser
>>> Username: admin
>>> Email address: admin@example.com
>>> Password: ****
>>> Password (again): ****
```

